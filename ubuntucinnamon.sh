#Version 1.0
echo "Sam's epic ubuntu cinnamon install script"
echo "Recommended Nvidia Driver:470"
sleep 5 
sudo apt install steam
sudo apt install wget
sudo apt install git
sudo apt install adb
sudo apt install cava

#Install Wine start
sudo dpkg --add-architecture i386
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/mantic/winehq-mantic.sources
sudo apt update
sudo apt install --install-recommends winehq-stable
#Install Wine finish

#Install fastfetch
wget https://github.com/fastfetch-cli/fastfetch/releases/download/2.12.0/fastfetch-linux-amd64.deb -O /home/$USER/Downloads/fastfetch.deb
sudo dpkg -i /home/$USER/Downloads/fastfetch.deb
sudo rm /home/$USER/Downloads/fastfetch.deb

#AppImages
sudo curl https://raw.githubusercontent.com/srevinsaju/zap/main/install.sh | sudo bash -s
