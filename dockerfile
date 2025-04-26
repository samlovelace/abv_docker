FROM ros:humble-ros-base-jammy

RUN apt-get update && \ 
    apt install -y \ 
    git \
    python3-colcon-common-extensions \
    build-essential

RUN mkdir /abv_ws
WORKDIR /abv_ws/

CMD bash -c "colcon build && source install/setup.bash && ros2 run abv_controller abv_controller"


