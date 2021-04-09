#!/bin/bash

#
# User calling the script
#
[ $SUDO_USER ] && user=$SUDO_USER || user=`whoami`
user_home=$(sudo -u $user sh -c 'echo $HOME')

#
# Install packages
#
apt install -y \
    zsh

#
# Install oh-my-zsh
#
if [ ! -d "$user_home/.oh-my-zsh" ]; then
    sudo -u $user sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi