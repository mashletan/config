export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DOCUMENTS_DIR="$HOME/Documents"
export XDG_DOWNLOAD_DIR="$HOME/Downloads"
export XDG_MUSIC_DIR="$HOME/Music"
export XDG_PICTURES_DIR="$HOME/Pictures"
export XDG_PROJECTS_DIR="$HOME/Repos"
export XDG_VIDEOS_DIR="$HOME/Videos"

# https://hiphish.github.io/blog/2020/12/27/making-bash-xdg-compliant/
# Make bash follow the XDG_CONFIG_HOME specification
_confdir=${XDG_CONFIG_HOME:-$HOME/.config}/bash
_datadir=${XDG_DATA_HOME:-$HOME/.local/share}/bash

# Source settings file
if [ -d "$_confdir" ]; then
        [ -f "$_confdir/bash_profile" ] && . "$_confdir/bash_profile"
fi

# Change the location of the history file by setting the environment variable
[ ! -d "$_datadir" ] && mkdir -p "$_datadir"
HISTFILE="$_datadir/history_login"

unset _confdir
unset _datadir
