#!/bin/bash

# https://docs.ansible.com/ansible/latest/getting_started/index.html

# ensure that your public SSH key is added to the authorized_keys file on each host
# cat ~/.ssh/id_rsa.pub | ssh USER@HOST "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"

START_ID=101
END_ID=107

for ((ID = START_ID; ID <= END_ID; ID++)); do
  echo "Processing CTID: $ID"
  ssh root@192.168.1.$ID date
done

ansible systems -m ping -i inventory.yaml
