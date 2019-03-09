#install some useful things
sudo apt update
sudo apt install vim
sudo apt install git 	
sudo apt install zsh
sudo apt install curl
sudo apt install i3
sudo apt install feh
# screenshot tool
sudo apt install scrot
sudo apt install python
sudo apt install python-pip
sudo apt install ffmpeg

# install spotify as suggested by: https://websiteforstudents.com/install-spotify-linux-client-on-ubuntu-16-04-18-04-desktop/
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

# pip install python libraries. This might change later when I set up anaconda
sudo pip install numpy 
sudo pip install opencv-python 

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install google chrome because though firefox is probably ok I don't like it  
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update
sudo apt install google-chrome-stable

# setup the dotfiles form this repository
source ./link_dotfiles.sh

# set up some useful git stuff
git config --global user.email "russeldj@clarkson.edu"
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
prezto.sh
