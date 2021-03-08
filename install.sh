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
create_link $CWD/zsh/zlogin $BASE_DIR/.zlogin
create_link $CWD/zsh/zshenv $BASE_DIR/.zshenv
create_link $CWD/zsh/zprofile $BASE_DIR/.zprofile
create_link $CWD/zsh/zshrc $BASE_DIR/.zshrc

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

#########
# picom #
#########

BASE_DIR="$BASE/picom"
if [ ! -d "$BASE_DIR" ] ; then
	mkdir $BASE_DIR
fi
create_link $CWD/picom/picom.conf $BASE_DIR/picom.conf

############
# starship #
############

BASE_DIR="$BASE"
if [ ! -d "$BASE_DIR" ] ; then
	mkdir $BASE_DIR
fi
create_link $CWD/starship/starship.toml $BASE_DIR/starship.toml

#########
# dunst #
#########

BASE_DIR="$BASE/dunst"
if [ ! -d "$BASE_DIR" ] ; then
	mkdir $BASE_DIR
fi
create_link $CWD/dunst/dunstrc $BASE_DIR/dunstrc

#######
# gdb #
#######

BASE_DIR="$HOME"
create_link $CWD/gdb/gdbinit $BASE_DIR/.gdbinit

#############
# alacritty #
#############

BASE_DIR="$BASE/alacritty"
if [ ! -d "$BASE_DIR" ] ; then
	mkdir $BASE_DIR
fi
create_link $CWD/alacritty/alacritty.yml $BASE_DIR/alacritty.yml

########
# sway #
########

BASE_DIR="$BASE/sway"
if [ ! -d "$BASE_DIR" ] ; then
	mkdir $BASE_DIR
fi
create_link $CWD/sway/config $BASE_DIR/config

########
# wofi #
########

BASE_DIR="$BASE/wofi"
if [ ! -d "$BASE_DIR" ] ; then
	mkdir $BASE_DIR
fi
create_link $CWD/wofi/style.css $BASE_DIR/style.css

##########
# waybar #
##########

BASE_DIR="$BASE/waybar"
if [ ! -d "$BASE_DIR" ] ; then
	mkdir $BASE_DIR
fi
create_link $CWD/waybar/config $BASE_DIR/config
create_link $CWD/waybar/style.css $BASE_DIR/style.css

#########
# kitty #
#########

BASE_DIR="$BASE/kitty"
if [ ! -d "$BASE_DIR" ] ; then
	mkdir $BASE_DIR
fi
create_link $CWD/kitty/kitty.conf $BASE_DIR/kitty.conf

###########
# neomutt #
###########

BASE_DIR="$BASE/neomutt"
if [ ! -d "$BASE_DIR" ] ; then
	mkdir $BASE_DIR
fi
create_link $CWD/neomutt/neomuttrc $BASE_DIR/neomuttrc
create_link $CWD/neomutt/mailcap $HOME/.mailcap

########
# tmux #
########

BASE_DIR="$HOME"
if [ ! -d "$BASE_DIR" ] ; then
	mkdir $BASE_DIR
fi
create_link $CWD/tmux/tmux.conf $BASE_DIR/.tmux.conf
