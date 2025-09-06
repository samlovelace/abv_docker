#!/bin/bash 

docker build -t auto_install_test . 
docker run -it auto_install_test:latest 

#docker run -it -v /home/sam/dev/cpp/robot_ws:/robot_ws auto_install_test:latest
