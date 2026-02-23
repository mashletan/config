set -o vi
shopt -s extglob
shopt -s globstar

if command -v fzf >/dev/null 2>&1; then
	eval "$(fzf --bash)"
fi

FZF_CTRL_T_COMMAND="find ./ /$HOME/ /$HOME/hdd0/"

export HISTFILESIZE=999999
export HISTSIZE=999999
export HISTTIMEFORMAT="[%F %T] "
export HISTFILE=~/.bash_eternal_history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
