#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

if [ -d ~/.colors ] || [ -L ~/.colors ] \
    || [ -d ~/.config/cava ] || [ -L ~/.config/cava ] \
    || [ -d ~/.config/i3 ] || [ -L ~/.config/i3 ] \
    || [ -d ~/.config/images ] || [ -L ~/.config/images ] \
    || [ -d ~/.config/kitty ] || [ -L ~/.config/kitty ] \
    || [ -d ~/.config/neofetch ] || [ -L ~/.config/neofetch ] \
    || [ -d ~/.config/polybar ] || [ -L ~/.config/polybar ] \
    || [ -d ~/.config/ranger ] || [ -L ~/.config/ranger ] \
	|| [ -d ~/.config/mopidy ] || [ -L ~/.config/mopidy ] \
    || [ -d ~/.config/dunst ] || [ -L ~/.config/dunst ] \
    || [ -f ~/.config/compton.conf ] || [ -L ~/.config/compton.conf ] \
    || [ -f ~/.config/redshift.conf ] || [ -L ~/.config/redshift.conf ] \
    || [ -f ~/.Xresources ] || [ -L ~/.Xresources ] \
	|| [ -f ~/.bashrc ] || [ -L ~/.bashrc ] \
	|| [ -f ~/.gtkrc-2.0 ] || [ -L ~/.gtkrc-2.0 ] ;
then
    echo "Existing files and directories have been detected, they will be overwritten if you continue"
    read -r -p "Are you sure? [y/N] " response
    response=${response,,}
    if [[ "$response" =~ ^(yes|y)$ ]]
    then
	echo "Removing existing files"
	[ -e ~/.colors ] && rm -rf ~/.colors
	[ -e ~/.config/cava ] && rm -rf ~/.config/cava
	[ -e ~/.config/i3 ] && rm -rf ~/.config/i3
	[ -e ~/.config/images ] && rm -rf ~/.config/images
	[ -e ~/.config/kitty ] && rm -rf ~/.config/kitty
	[ -e ~/.config/neofetch ] && rm -rf ~/.config/neofetch
	[ -e ~/.config/polybar ] && rm -rf ~/.config/polybar
	[ -e ~/.config/ranger ] && rm -rf ~/.config/ranger
	[ -e ~/.config/mopidy ] && rm -rf ~/.config/mopidy
	[ -e ~/.config/dunst ] && rm -rf ~/.config/dunst
	[ -e ~/.config/compton.conf ] && rm ~/.config/compton.conf
	[ -e ~/.config/redshift.conf ] && rm ~/.config/redshift.conf
	[ -e ~/.Xresources ] && rm ~/.Xresources
	[ -e ~/.bashrc ] && rm ~/.bashrc
	[ -e ~/.gtkrc-2.0 ] && rm ~/.gtkrc-2.0

	echo "Installing theme"
	ln -s $DIR/.colors/ ~/.colors
	ln -s $DIR/.config/cava/ ~/.config/cava
	ln -s $DIR/.config/i3/ ~/.config/i3
	ln -s $DIR/.config/images/ ~/.config/images
	ln -s $DIR/.config/kitty/ ~/.config/kitty
	ln -s $DIR/.config/neofetch/ ~/.config/neofetch
	ln -s $DIR/.config/polybar/ ~/.config/polybar
	ln -s $DIR/.config/ranger/ ~/.config/ranger
	ln -s $DIR/.config/mopidy/ ~/.config/mopidy
	ln -s $DIR/.config/dunst/ ~/.config/dunst
	ln -s $DIR/.config/compton.conf ~/.config/compton.conf
	ln -s $DIR/.config/redshift.conf ~/.config/redshift.conf
	ln -s $DIR/.Xresources ~/.Xresources
	ln -s $DIR/.bashrc ~/.bashrc
	ln -s $DIR/.gtkrc-2.0 ~/.gtkrc-2.0
    else
        exit 9999
    fi
else
	echo "Installing theme"
	ln -s $DIR/.colors/ ~/.colors
	ln -s $DIR/.config/cava/ ~/.config/cava
	ln -s $DIR/.config/i3/ ~/.config/i3
	ln -s $DIR/.config/images/ ~/.config/images
	ln -s $DIR/.config/kitty/ ~/.config/kitty
	ln -s $DIR/.config/neofetch/ ~/.config/neofetch
	ln -s $DIR/.config/polybar/ ~/.config/polybar
	ln -s $DIR/.config/ranger/ ~/.config/ranger
	ln -s $DIR/.config/mopidy/ ~/.config/mopidy
	ln -s $DIR/.config/dunst/ ~/.config/dunst
	ln -s $DIR/.config/compton.conf ~/.config/compton.conf
	ln -s $DIR/.config/redshift.conf ~/.config/redshift.conf
	ln -s $DIR/.Xresources ~/.Xresources
	ln -s $DIR/.bashrc ~/.bashrc
	ln -s $DIR/.gtkrc-2.0 ~/.gtkrc-2.0
fi
