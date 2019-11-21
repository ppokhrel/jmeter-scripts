#!/bin/sh
# assume there are 10 servers with host name = *<id>.somedomain.com
# replace host and username 
for i in 010
do
echo "Starting SSH to <somehost>${i}"
ssh -t <yourusername>@<host>${i}.<yourdomain>.com "echo \"Stopping Jmeter Service\"; sudo systemctl stop jmeter-server.service; echo \"Starting Jmeter Service\";sudo systemctl start jmeter-server.service; echo \"Jmeter Services Running:\"; pgrep jmeter"
done
