#!/bin/bash
source ./devel/setup.bash
sed -i "s/indirizzoipserver/"$IP"/g" ../Client/client_in/client.conf
chmod +rx /Client/client_in/start_client.sh &&
cd /Client/client_in && sync && ./start_client.sh &
sleep 5s
export ROS_IP=$(/sbin/ifconfig | grep "inet addr:10.8" |awk -F: '{print $2}' | awk '{print $1}')
export ROS_MASTER_URI=http://10.8.0.1:11311
ntpdate ntp.ubuntu.com && 
cd /experiments && source ./devel/setup.bash && python pub.py 


