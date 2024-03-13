cd /home/unitree/ERF_ros_ws
catkin_make
source devel/setup.bash
#roslaunch start logger.launch teamName:=RoboTo challengeType:=navigation
roslaunch erf_slam erf_slam.launch &
roslaunch slam_toolbox online_async.launch
rosparam load src/erf_slam/config/bridge.yaml
