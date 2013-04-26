SHELL=/bin/bash
export EDITOR=/usr/bin/vim
export CVS_RSH=ssh
export CLICOLOR="true"
export DISPLAY=:0.0
export LESS_TERMCAP_md="$ORANGE"
export MANPAGER="less -X"

PATH="/usr/local/bin:/usr/local/sbin:/usr/local/go/bin:/usr/local/share/python:${PATH}"
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
set -o emacs

# Bash Prompt Customization: [time user] path $
PS1="\[\033[36m\][\t\[\033[m\] \[\033[36m\]\u]\[\033[m\] \[\033[1;33m\]\w\[\033[m\] \$ "
PS2='> '


[[ -s "/Users/fool/.rvm/scripts/rvm" ]] && source "/Users/fool/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# This not working on desktop, not installed:
# eval "$(rbenv init -)"

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# rvm use 1.9.3

# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$@"
}

# Determine size of a file or total size of a directory
function fs() {
	if du -b /dev/null > /dev/null 2>&1; then
		local arg=-sbh
	else
		local arg=-sh
	fi
	if [[ -n "$@" ]]; then
		du $arg -- "$@"
	else
		du $arg .[^.]* *
	fi
}

# Function to get cdargs to work:

function cv () {
           cdargs "$1" && cd "`cat "$HOME/.cdargsresult"`" ;
}

# Add the current directory with the parameter as description

function cap () {
       cdargs --add=":$1:`pwd`" ;
}
