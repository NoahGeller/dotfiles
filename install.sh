#!/bin/sh

# FUNCTIONS

create_link () {
	local FROM=$1
	local TO=$2
	if [ -e "$TO" ] ; then
		mv $TO ${TO}.old
	fi
	ln -s $FROM $TO
}

CWD="$(pwd)"
BASE="$HOME/.config"

#######
# zsh #
#######

BASE_DIR="$BASE/zsh"
if [ ! -d "$BASE_DIR" ] ; then
	mkdir $BASE_DIR
fi
create_link $CWD/zsh/zshenv $BASE_DIR/.zshenv
create_link $CWD/zsh/zshrc $BASE_DIR/.zshrc

#############
# alacritty #
#############

BASE_DIR="$BASE/alacritty"
if [ ! -d "$BASE_DIR" ] ; then
	mkdir $BASE_DIR
fi
create_link $CWD/alacritty/alacritty.yml $BASE_DIR/alacritty.yml

##########
# neovim #
##########

BASE_DIR="$BASE/nvim"
if [ ! -d "$BASE_DIR" ] ; then
	mkdir $BASE_DIR
fi
create_link $CWD/nvim/init.vim $BASE_DIR/init.vim

########
# rofi #
########

BASE_DIR="$BASE/rofi"
if [ ! -d "$BASE_DIR" ] ; then
	mkdir $BASE_DIR
fi
create_link $CWD/rofi/config.rasi $BASE_DIR/config.rasi

##############
# fontconfig #
##############

BASE_DIR="$BASE/fontconfig"
if [ ! -d "$BASE_DIR" ] ; then
	mkdir $BASE_DIR
fi
create_link $CWD/fontconfig/fonts.conf $BASE_DIR/fonts.conf
