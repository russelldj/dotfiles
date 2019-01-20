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
