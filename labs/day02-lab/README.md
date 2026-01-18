# Day02 lab - SSH shortnames + inventory
## Goal
- connect to lab-srv-01/lab-srv-02 via shortnames (ssh config)
- prepare inventory for future Ansible labs

## Steps
1) Configure  ~/.ssh/config on lab-ctl with Host lab-srv-01,lab-srv-02
2) Verify :
 - ssh lab-srv-01 "hostname"
 - ssh lab-srv-02 "hostname"
3) Create labs/day02-lab/inventory.ini 

