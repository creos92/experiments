FROM osrf/ros:indigo-desktop-full

RUN \
 svn checkout https://github.com/creos92/experiments.git/trunk/Client &&\
 svn checkout https://github.com/creos92/experiments.git/trunk/experiments &&\
 apt-get update &&\
 apt-get install build-essential checkinstall -y &&\
 apt-get install libssl-dev liblzo2-dev libpam0g-dev wget -y &&\
 wget https://swupdate.openvpn.org/community/releases/openvpn-2.4.4.tar.gz &&\
 sudo tar zxvf openvpn-2.4.4.tar.gz &&\
 cd openvpn-2.4.4 && ./configure && make && checkinstall -y &&\
/bin/bash -c 'source /opt/ros/indigo/setup.bash && \
 cd /experiments && catkin_make'
 
CMD cd experiments && chmod +rx start_c_in.sh && sync && ./start_c_in.sh
