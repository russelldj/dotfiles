## setting up the shell

#set this to false if you are trying to set up bash
USE_ZSH=true

if $USE_ZSH; then
    echo "Setting up zsh"
    mv ~/.zshrc ~/.OLDzshrc
    ln -s $(pwd)/.zshrc ~/
    source ~/.zshrc
else
    echo "Setting up bash"
    mv ~/.bashrc ~/.OLDbashrc
    ln -s $(pwd)/.bashrc ~/
    source ~/.bashrc
fi

## setting up ssh
if [ ! -f ~/.ssh/config ]; then 
	# if not, create them
	ln -s $(pwd)/sshconfig ~/.ssh/config 
fi

## I3
mv ~/.config/i3/config ~/.config/i3/OLDconfig
ln -s $(pwd)/i3config ~/.config/i3/config
