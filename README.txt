Da linea di comando:
Lato server:
su root 
svn checkout https://github.com/creos92/experiments.git/trunk/DockerfileServer
cd DockerfileServer/
docker build . -t experiments:server
docker-compose up

Lato Client:
INPUT MODULE:
su root
svn checkout https://github.com/creos92/experiments.git/trunk/Dockerfile_Client_Input
cd Dockerfile_Client_Input/
docker build . -t experiments:client_in
docker-compose run -e IP=34.244.15.238 experiments_client_in


OUTPUT MODULE:
su root
svn checkout https://github.com/creos92/experiments.git/trunk/Dockerfile_Client_Output
cd Dockerfile_Client_Output/
docker build . -t experiments:client_out
docker-compose run -e IP=34.244.15.238 experiments_client_out


Altro:
Download del file
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
%ip link delete tun* %eliminare tutte le interfacce tun (tun0,tun1)
run -it --privileged --env="DISPLAY" --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" -p 1194:1194 --name parloma_server parloma:server
docker run -it --privileged --env="DISPLAY" --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --name parloma_client parloma:client
export IP=$IP
xhost +local:root 
