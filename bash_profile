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

# Searches following paths when doing cd:
CDPATH=".:~:~/Documents/Docs:~/shell"

# Does the following do anything? I don't even have this username or rvm installed on my macbook air:
# [[ -s "~/.rvm/scripts/rvm" ]] && source "~/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# This not working on desktop, not installed:
# eval "$(rbenv init -)"
eval "$(rbenv init -)"

# Add to python path:
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH


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

export PATH="$PATH:/Applications/Muse"

export DYLD_FALLBACK_LIBRARY_PATH="$DYLD_FALLBACK_LIBRARY_PATH:/Applications/Muse"

##
# Your previous /Users/kml/.bash_profile file was backed up as /Users/kml/.bash_profile.macports-saved_2018-02-22_at_21:51:38
##

# MacPorts Installer addition on 2018-02-22_at_21:51:38: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
