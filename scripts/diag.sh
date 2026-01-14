#!/usr/bin/env bash
set -euo pipefail

HOST="${1:-localhost}"

echo "=== $HOST ==="
ssh -o BatchMode=yes -o ConnectTimeout=5 "$HOST" '
  set -e
  echo "date: $(date)"
  echo "host: $(hostname)"
  echo "user: $(whoami)"
  echo "uptime: $(uptime -p || true)"
  echo "--- os ---"
  lsb_release -a 2>/dev/null || cat /etc/os-release
  echo "--- ip ---"
  ip -4 a | sed -n "1,120p"
  echo "--- routes ---"
  ip r
  echo "--- listening ---"
  ss -tulpn | sed -n "1,120p"
  echo "--- ssh ---"
  systemctl is-active ssh && systemctl is-enabled ssh
'
