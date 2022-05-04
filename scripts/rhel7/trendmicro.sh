#!/usr/bin/env bash

#/usr/local/bin/aws s3 cp s3://s3imagepipeline/Apps/Agent-PGPCore-RedHat_EL8-20.0.0-3964.x86_64.rpm /tmp/TrendMicro
wget https://s3imagepipeline.s3.amazonaws.com/Apps/Agent-PGPCore-RedHat_EL7-20.0.0-4185.x86_64.rpm

echo "Enable DSA FIPS mode ..."
echo "FIPSMode=1" >> /etc/ds_agent.conf
sudo rpm -ihv Agent-PGPCore-RedHat_EL7-20.0.0-4185.x86_64.rpm