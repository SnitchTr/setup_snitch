cd ~/catkin_build_ws
catkin build cv_bridge
source install/setup.bash --extend
cd ~/
python3 ~/catkin_ws/src/human_detection_pkg/scripts/Human_detection_node.py
