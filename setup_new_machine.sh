#install some useful things
sudo apt update -y
sudo apt install vim -y
sudo apt install git -y
sudo apt install zsh -y
sudo apt install curl -y
sudo apt install tree -y
sudo apt install i3 -y
sudo apt install feh -y
# screenshot tool
sudo apt install scrot -y
sudo apt install python -y
sudo apt install python-pip -y
sudo apt install ffmpeg -y
sudo apt install pavucontrol -y
sudo apt install cmake -y
sudo apt install cmake-gui -y
sudo apt install htop -y

# Snap installs
sudo snap install vlc
j

# install spotify as suggested by: https://websiteforstudents.com/install-spotify-linux-client-on-ubuntu-16-04-18-04-desktop/
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
#echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
#sudo apt-get update -y
#sudo apt-get install spotify-client
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

# pip install python libraries. This might change later when I set up anaconda
sudo pip install numpy
sudo pip install opencv-python

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install google chrome because though firefox is probably ok I don't like it
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update

# install atom text editor
sudo apt update
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packagecloud.io/AtomEditor/atom/gpgkey -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main"
sudo apt install atom

# and install the vim keybindings
apm install vim-mode-plus
# Also it would be a good idea to install linter, kite, python-pep8-linter

sudo apt install google-chrome-stable

# setup the dotfiles form this repository
source ./link_dotfiles.sh

# set up some useful git stuff
git config --global user.email "david.russell@kitware.com"
git config --global user.name  "David Russell"

# install git large file system
# https://github.com/git-lfs/git-lfs/wiki/Installation
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
git lfs install


# set up ssh keys
# check if they exist already
if [ ! -f ~/.ssh/id_rsa.pub ]; then
	# if not, create them
	ssh-keygen -t rsa
fi
# this is the command to copy keys to the host:
## ssh-copy-id -i ~/.ssh/mykey user@host

mkdir ~/.backgrounds

# setup prezto
source ./prezto.sh
