#!/usr/bin/env bash 

# autostar programs
/usr/libexec/kf5/polkit-kde-authentication-agent-1 &
#/usr/libexec/xfce-polkit &
#"/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1" &
#
nitrogen --restore & 
#nitrogen --random --set-zoom-fill /mnt/STORAGE/Pictures/backgrounds/ &
#
picom -f &
killall variety &
variety-applet  &
#variety &
dunst &
killall volumeicon flameshot &
#flameshot &
volumeicon &
blueman-applet &
mn-applet &
joplin-desktop


# If you want to use XFCE config tools...
#
xfce-mcs-manager &
xfce4-clipman &
#lxsession &
