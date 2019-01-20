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

# set up ssh keys
# check if they exist already
if [ ! -f ~/.ssh/id_rsa.pub ]; then 
	# if not, create them
	ssh-keygen -t rsa
fi
# this is the command to copy keys to the host: 
## ssh-copy-id -i ~/.ssh/mykey user@host
