#!/bin/bash

config_file_name="k3s.yaml"

touch $config_file_name
chmod 600 $config_file_name
ssh -i ~/.ssh/coreOS coreos@server "sudo cat /etc/rancher/k3s/k3s.yaml" > $config_file_name
