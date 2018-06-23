#!/bin/bash

##############################################
########## Configuration File Setup ##########
##############################################

# Enable NetworkManager
sudo systemctl enable NetworkManager.service

#############################
##### home file changes #####
#############################

# Add .Xmodmap to ~/
cp ~/GitHub/Antergos/home/.Xmodmap ~/

# Add .Xresources to ~/
cp ~/GitHub/Antergos/home/.Xresources ~/
