sudo apt install dkms linux-headers-generic git curl ca-certificates -y
git clone https://github.com/choff/anbox-modules.git
cd anbox-modules
chmod +x INSTALL.sh
./INSTALL.sh
cd ..
curl https://repo.waydro.id/ | sudo bash
sudo apt update
sudo apt upgrade -y
sudo apt install waydroid -y
sudo systemctl enable --now waydroid-container
sudo apt autoremove -y
sudo waydroid init
chmod +x *
./requirements.sh
rm -rf anbox-modules
clear
echo -e "\033[0;31m   TO LAUNCH WAYDROID, PLEASE SWITCH TO WAYLAND USING THE INSTRUCTIONS"
echo "   at https://gist.github.com/Bummbumm6/f92b085030a33c39d8f0bf5e6317f733"
