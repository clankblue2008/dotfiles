#Version 1.0
echo "Sam's epic ubuntu cinnamon install script"
echo "Recommended Driver:470"
sleep 5 
sudo apt install steam
#Install wine start
sudo dpkg --add-architecture i386
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/mantic/winehq-mantic.sources
sudo apt update
sudo apt install --install-recommends winehq-stable
#Install wine done
