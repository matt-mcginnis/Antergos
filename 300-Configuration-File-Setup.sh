#!/bin/bash

#####################################################
########## Configuration File Setup Script ##########
#####################################################

################################
##### .config file changes #####
################################

# Replace i3 configuration with personal configuration
cp -r ~/GitHub/Antergos/.config/i3/ ~/.config/

# Replace i3blocks with personal configuration
cp -r ~/GitHub/Antergos/.config/i3blocks/ ~/.config/

# Copy neomuttrc personal configuration
cp -r ~/GitHub/Antergos/.config/neomutt/ ~/.config/

# Copy powerline personal configuration
cp -r ~/GitHub/Antergos/.config/powerline ~/.config/

# Copy ranger personal configuration
cp -r ~/GitHub/Antergos/.config/ranger/ ~/.config/

# Replace qutebrowser with personal configuration
sudo cp -r ~/GitHub/Antergos/.config/qutebrowser ~/.config/

############################
##### usr file changes #####
############################

# A temporary wrapper fix for gvfs-trash to work in atom
sudo cp ~/GitHub/Antergos/usr/bin/gvfs-trash /usr/bin/

#############################
##### home file changes #####
#############################

# Copy .bashrc personal configuration
sudo rm ~/.bashrc
cp ~/GitHub/Antergos/home/.bashrc ~/

# Copy .tmux.conf personal configuration
cp ~/GitHub/Antergos/home/.tmux.conf ~/

# Add .Xmodmap to ~/
cp ~/GitHub/Antergos/home/.Xmodmap ~/

# Add .Xresources to ~/
cp ~/GitHub/Antergos/home/.Xresources ~/

# Add .XresourcesHiDPI to ~/
cp ~/GitHub/Antergos/home/.XresourcesHiDPI ~/

# Add .Xstart.zsh to ~/
# Be sure to add this as a startup application
# in order to have .Xresources loaded on start
cp ~/GitHub/Antergos/home/.Xstart.zsh ~/


###################################
##### Various System Settings #####
###################################

# Enable NetworkManager
sudo systemctl enable --now NetworkManager.service

# Enable syncthing
sudo systemctl enable --now syncthing@matt.service

# Disable bell for X applications
# You may have to run this in zsh 
# again after it is installed
xset b off

#####################
### SSH key setup ###
#####################

ssh-keygen -C mcginnisma90@gmail.com -t rsa

# Be sure to delete the old key on Heroku
heroku keys:add

# Be sure to delete the old linux key and replace it on GitHub
# Run cat ~/.ssh/id_rsa.pub to get key for GitHub

#####################
##### vim setup #####
#####################

# Copy .vimrc personal configuration
cp ~/GitHub/Antergos/home/.vimrc ~/

# Copy .vim/after/ personal configuration
cp -r ~/GitHub/Antergos/.vim/after/ ~/.vim/


#####################
##### zsh setup #####
#####################

# Make zsh the default shell
chsh -s /usr/bin/zsh

# Install zsh-autosuggestions
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install zsh-vim-mode
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/softmoth/zsh-vim-mode ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vim-mode

# Copy zsh-autosuggestions custom plugin
cp ~/GitHub/Antergos/.oh-my-zsh/custom/zsh-autosuggestions.zsh ~/.oh-my-zsh/custom/

# Replace .zshrc with personal configuration
rm ~/.zshrc
cp ~/GitHub/Antergos/home/.zshrc ~/
