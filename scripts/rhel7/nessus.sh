#!/usr/bin/env bash

yum -y install wget
wget https://s3imagepipeline.s3.amazonaws.com/Apps/NessusAgent-10.1.3-es7.x86_64.rpm
sudo rpm -i NessusAgent-10.1.3-es7.x86_64.rpm
sudo /bin/systemctl start nessusagent.service
sudo /bin/systemctl enable nessusagent.service