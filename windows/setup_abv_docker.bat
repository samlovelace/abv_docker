@echo off
setlocal

:: Define image name
set IMAGE_NAME=abv_ros

:: Build the Docker image
echo Building Docker image: %IMAGE_NAME%...
docker build -t %IMAGE_NAME% .

:: Check if the build was successful
if %ERRORLEVEL% NEQ 0 (
    echo Docker build failed!
    exit /b %ERRORLEVEL%
)

:: Call the script to run the container
call run_abv_docker.bat

endlocal
