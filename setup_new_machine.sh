#install some useful things
sudo apt update
sudo apt install vim
sudo apt install git 	
sudo apt install zsh
sudo apt install curl
sudo apt install i3

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# setup the dotfiles form this repository
source link_dotfiles.sh

# set up some useful git stuff
git config --global user.email "russeldj@clarkson.edu"
git config --global user.name  "David Russell"
