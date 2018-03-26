#!/bin/bash
source ./devel/setup.bash
chmod +rx /Server/server/start_server.sh &&
cd /Server/server && sync && ./start_server.sh &
sleep 1s
roscore &
sleep 2s
export ROS_IP=10.8.0.1
export ROS_MASTER_URI=http://10.8.0.1:11311


