FROM ros:humble-ros-base-jammy

RUN apt-get update && \ 
    apt install -y \ 
    git \
    python3-colcon-common-extensions \
    build-essential
    
RUN mkdir -p /abv_ws/src
WORKDIR /abv_ws/src 
RUN git clone https://github.com/samlovelace/abv_controller.git
RUN git clone https://github.com/samlovelace/abv_idl.git
RUN git clone https://github.com/samlovelace/abv_communications.git

WORKDIR /abv_ws
RUN export LD_LIBRARY_PATH
RUN /bin/bash -c "source /opt/ros/humble/setup.bash && colcon build"


