#!/bin/sh
for i in 010
do
echo "Starting SSH to slcd000ldr${i}"
ssh -t ppokhrel@slcd000ldr${i}.stubcorp.com "echo \"Stopping Jmeter Service\"; sudo systemctl stop jmeter-server.service; echo \"Starting Jmeter Service\";sudo systemctl start jmeter-server.service; echo \"Jmeter Services Running:\"; pgrep jmeter"
done