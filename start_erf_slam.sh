cd /home/unitree/ERF_ros_ws
catkin_make
source devel/setup.bash
#roslaunch start logger.launch teamName:=RoboTo challengeType:=navigation
roslaunch direct_lidar_inertial_odometry dlio.launch rviz:=false pointcloud_topic:=/points_raw imu_topic:=/imu_raw &
roslaunch erf_slam erf_slam.launch &
roslaunch slam_toolbox online_async.launch &
rosparam load src/erf_slam/config/bridge.yaml
