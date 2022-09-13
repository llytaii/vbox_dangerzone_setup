# This script assists with the setup of Dangerzone in a virtual machine"
# Testet on Ubuntu 22.04

# update and prepare system for vbox guest additions installation needed for file transfer
sudo apt update
sudo apt upgrade -y
sudo apt install perl make gcc curl -y
echo ""
echo ""
echo "!!!ATTENTION!!!"
echo "---------------------------------------------------------------------------------------------------"
echo "Now manually mount and install the VBoxGuestAdditions for Linux like this:"
echo "1. In Virtual Box: Devices > Mount Guest Additions"
echo "2. In ubuntu guest:"
echo "  	2.1  Open the mounted iso in a file explorer"
echo "  	2.2  Right click > open terminal here"
echo "  	2.3  Start installation with: sudo ./VBoxLinuxAdditions.run"
echo "3. After the installation finished come back to this window and press ENTER three times to continue"
echo "   with the installation of dangerzone"
echo "---------------------------------------------------------------------------------------------------"
echo "!!!ATTENTION!!!"
echo ""
echo ""
read
read
read
sudo adduser $USER vboxsf

# install dangerzone
curl -s https://packagecloud.io/install/repositories/firstlookmedia/code/script.deb.sh | sudo bash
sudo apt update
sudo apt install dangerzone -y

echo ""
echo "Dangerzone and VBoxGuestAdditions were installed successfully!"
echo "Reboot now and add a shared folder via Virtual Box"
echo "Hint: Use the ubuntu file explorer to access the shared folder and transfer its contents into this"
echo "      virtual machine to be able to convert them with dangerzone!"
