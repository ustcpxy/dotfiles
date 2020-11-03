# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes project's private bin if it exists
if [ -d "$HOME/projects/bin" ] ; then
    PATH="$HOME/projects/bin:$PATH"
fi

# set PATH so it includes emacs's private bin if it exists
if [ -d "$HOME/.emacs.d/bin" ] ; then
    PATH="$HOME/.emacs.d/bin:$PATH"
fi

# set PATH so it includes doom-emacs's private bin if it exists
if [ -d "$HOME/.config/doom/bin" ] ; then
    PATH="$HOME/.config/doom/bin:$PATH"
fi

# set PATH so it includes my private bin if it exists
if [ -d "$HOME/mybin" ] ; then
    PATH="$HOME/mybin:$PATH"
fi

PATH="/usr/local/go/bin:$HOME/go/bin:$PATH"

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
