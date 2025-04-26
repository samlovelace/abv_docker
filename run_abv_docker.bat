
docker run -it --rm --network host ^
    -v C:/Users/samlo/source/repos/abv_ws:/abv_ws ^
    --name abv_controller ^
    abv_ros:latest