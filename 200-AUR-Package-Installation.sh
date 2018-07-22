#!/bin/bash

##############################################
########## AUR Package Installation ##########
##############################################

# Install google chrome
yaourt google-chrome

# Install hacked-aio-righty cursor
yaourt hacked-aio-righty

# Install i3exit
yaourt i3exit

# Install rxvt-unicode-pixbuf
yaourt rxvt-unicode-pixbuf

# Install urxvt-resize-font-git
yaourt urxvt-resize-font-git

#################################################
########## GitHub Package Installation ##########
#################################################

# Install patched powerline fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

############################################
########## oh-my-zsh Installation ##########
############################################

# Install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)
"

