#!/bin/bash

# https://github.com/yedhink
# Feel free to share with your friends

# install wmctrl. Its a prerequisite to make this script work.

# Launch it in your i3 config file
# exec --no-startup-id ~/.config/i3/init_workspace.sh
#
# obviously, make it executable : # chmod +x init_workspace.sh
# HAVE FUN !

# App you want to start :
apps=(
 #if you're using urxvt then replace st with that	
 '/usr/bin/google-chrome'
 '/snap/bin/atom'
 '/usr/bin/gnome-terminal'
 '/usr/bin/gnome-terminal -x htop'
# '/usr/bin/gnome-terminal -x gpustat'
# '/usr/bin/google-chrome https://www.youtube.com/watch?v=iIGKlicb8n0 --new-window' # open this first to hopefully get the sound working
 '/usr/bin/pavucontrol'
 '/snap/bin/spotify'
)

# Which workspace to assign your wanted App :
workspaces=(
"1"
"2"
"2"
"4"
#"4"
"9" # create a dummy spotify as the first one doesn't seem to work
#"9"
"9"
)

# counter of opened windows
owNB=0

# add paths of apps to array
#arr=()
arr+=( '/snap/bin')
arr+=( '/usr/bin')


for iwin in ${!apps[*]}
do
    while [ "$owNB" -lt "$iwin" ] # wait before start other programs
    do
        owNB=$(wmctrl -l | wc -l) # Get number of actual opened windows
    done

    i3-msg workspace ${workspaces[$iwin]} # move in wanted workspace
    ${apps[$iwin]} & # start the wanted app
done

####### ABSOLUTELY OPTIONAL ########
## inject message(s) into terminal (first one created : /dev/pts/0)

# wait a moment
sleep 6 

#~/dotfiles/scripts/zoso > /dev/pts/0
#/usr/bin/neofetch > /dev/pts/0
#~/dotfiles/scripts/neostart.sh > /dev/pts/0
