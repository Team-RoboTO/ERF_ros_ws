cd /home/root/ros_ws
catkin_make
source devel/setup.bash
rosservice call /wolf_controller/stand_up
#roslaunch start logger.launch teamName:=RoboTo challengeType:=navigation
roslaunch erf_slam erf_slam.launch &
roslaunch slam_toolbox online_async.launch
rosparam load src/erf_slam/config/bridge.yaml
