#!/bin/bash

# this will go into the .xsession-errors along with all other echo's
# good for debugging where things went wrong
echo "$0: Beginning session setup..."

# First read /etc/profile and .profile
test -f /etc/profile && . /etc/profile
test -f "$HOME/.profile" && . "$HOME/.profile"
# Second read /etc/xprofile and .xprofile for X specific setup
test -f /etc/xprofile && . /etc/xprofile
test -f "$HOME/.xprofile" && . "$HOME/.xprofile"

gsettings set org.gnome.desktop.interface gtk-theme Arc
gsettings set org.gnome.desktop.interface icon-theme Arc
gsettings set org.gnome.desktop.wm.preferences theme Arc
gsettings set org.gnome.shell.extensions.user-theme name "Arc-Lighter"
gsettings set org.gnome.shell enabled-extensions "['user-theme@gnome-shell-extensions.gcampax.github.com', 'drive-menu@gnome-shell-extensions.gcampax.github.com']"

#exec gnome-session
