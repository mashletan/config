tty="$(tty | sed -e 's|/dev/tty||')"
if [[ "$tty" =~ ^[0-9]+$ ]]; then
	alias startx="exec startx -- vt$tty"
else
	echo "bad tty"
fi
export ALSA_CONFIG_PATH=~/.config/alsa/equalizer
export WINEPREFIX=~/hdd0/wine/wine32
