#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

export XMODIFIERS="@im=fcitx"
export QT_IM_MODULE="fcitx"
export GTK_IM_MODULE="fcitx"

# fix emacs input issue
export LC_CTYPE="zh_CN.UTF-8"

# swap capslock and ctrl left
setxkbmap -layout "$(setxkbmap -print | awk -F + '/xkb_symbols/ {print $2}')" -option ctrl:swapcaps

# invoke global X session script
. /etc/X11/Xsession
