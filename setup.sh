cd ~/
sudo apt update
sudo apt upgrade -y
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update
sudo apt install ros-melodic-desktop-full -y
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential -y
sudo apt install python3-pip python3-yaml -y
sudo pip3 install rospkg catkin_pkg
sudo apt-get install python-catkin-tools python3-dev python3-numpy -y
sudo apt install python-rosdep -y
sudo rosdep init 
rosdep update
sudo apt-key adv --keyserver keys.gnupg.net --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE
sudo add-apt-repository "deb https://librealsense.intel.com/Debian/apt-repo bionic main" -u
sudo apt-get install librealsense2-dkms -y
sudo apt-get install librealsense2-utils -y
sudo apt-get install librealsense2-dev -y
sudo apt-get install librealsense2-dbg -y
sudo apt install ros-melodic-rtabmap ros-melodic-rtabmap-ros ros-melodic-rosserial ros-melodic-rosserial-arduino ros-melodic-imu-filter-madgwick ros-melodic-librealsense2 -y
mkdir ~/catkin_build_ws
mkdir ~/catkin_build_ws/src
catkin config -DPYTHON_EXECUTABLE=/usr/bin/python3 -DPYTHON_INCLUDE_DIR=/usr/include/python3.6m -DPYTHON_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.6m.so
catkin config --rosinstall
cd ~/catkin_build_ws/src
git clone -b melodic https://github.com/ros-perception/vision_opencv.git
cd ~/catkin_build_ws
catkin build cv_bridge
source install/setup.bash --extend
cd ~/
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
git clone https://github.com/SnitchTr/ROS-test-tools
git clone https://github.com/SnitchTr/snitch_launch_pkg
git clone https://github.com/SnitchTr/snitch_2dnav
git clone https://github.com/SnitchTr/human_detection_pkg
cd ~/catkin_ws
catkin_make
source devel/setup.bash
cd ~/
sudo pip3 install --extra-index-url https://google-coral.github.io/py-repo/ tflite_runtime
sudo apt-get install python3-opencv -y
