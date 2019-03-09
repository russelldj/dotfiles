## setting up the shell

#set this to false if you are trying to set up bash
USE_ZSH=true

if $USE_ZSH; then
    echo "Setting up zsh"
    mv ~/.zshrc ~/.OLDzshrc
    cp $(pwd)/.zshrc ~/
    source ~/.zshrc
else
    echo "Setting up bash"
    mv ~/.bashrc ~/.OLDbashrc
    cp $(pwd)/.bashrc ~/
    source ~/.bashrc
fi

mkdir ~/.ssh
mkdir -p ~/.config/i3
	
## setting up ssh
if [ ! -f ~/.ssh/config ]; then 
	# if not, create them
	cp $(pwd)/sshconfig ~/.ssh/config 
fi

## I3
mv ~/.config/i3/config ~/.config/i3/OLDconfig
cp $(pwd)/i3config ~/.config/i3/config
mv ~/.profile ~/OLDprofile 
cp $(pwd)/profile ~/.profile
. ~/.profile
