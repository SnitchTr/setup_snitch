# Setting up the snitch platform
This reposytory contains a shell script that automatically installs ros,the tflite interpreter and python opencv and builds all neeaded packages for runing the snitch platform. This only works for cpu computers running [ubuntu 18.04.5 lts desktop image](https://releases.ubuntu.com/18.04/ubuntu-18.04.5-desktop-amd64.iso). **The process requires an internet connection.**
1. Install the git command:
```
sudo apt install git
```
2. Clone the repository by issuing the following command:
```
git clone https://github.com/SnitchTr/setup_snitch
```
3. Enter the directory and run the shell script:
```
cd setup_snitch
bash setup.sh
```
Once it is done running restart the computer if neeaded if not **close the terminal and open a new one if not it won't work**.
You can run the camera, mapping and arduino nodes by running:
```
bash launch_camera.sh
```
or the human detection by runing:
```
bash human_detector_launch.sh
```
