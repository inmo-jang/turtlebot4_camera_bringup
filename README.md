# TB4 Bringup for OAK-D Camera

## How to Setup

1) SSH to RPi: `ssh ubuntu@<ip_address>`

2) Make a workspace folder
    ```
    mkdir -p ros2_ws/src
    ```

3) Clone this repo and build it
    ```
    cd ~/ros2_ws/src
    git clone https://github.com/inmo-jang/turtlebot4_camera_bringup.git
    cd ..
    colcon build
    ```

    Install dependencies
    ```
    sudo apt install ros-humble-depthai-ros
    ```


4) Copy `start_camera.sh` to the root folder
    ```
    cd ~
    cp ~/ros2_ws/src/turtlebot4_camera_bringup/start_camera.sh ~/start_camera.sh
    ```

5) Run the shell script
    ```
    . start_camera.sh
    ```



6) Open another terminal on your computer, then run rviz2 using `turtlebot4_camera.rviz`
    ```
    rviz2 -d turtlebot4_camera.rviz
    ```    
