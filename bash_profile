SHELL=/usr/local/bin/bash
export EDITOR=/usr/bin/vim
export CVS_RSH=ssh
export CLICOLOR="true"
export DISPLAY=:0.0
export LESS_TERMCAP_md="$ORANGE"
export MANPAGER="less -X"

set -o vi # Use VI on the command line to navigate around a command

PATH="/usr/local/bin:/usr/local/sbin:/usr/local/go/bin:/:/Users/kml/shell/bin:${PATH}"

mkcd () {
  mkdir "$1"
  cd "$1"
}

kurl () {
	# Assumes $1 is pause in seconds between requests
	# Assumes $2 is URL, with [x-y] as range inside it
	# Assumes output is .jpg file
	if [ -z "$1" ]  2> /dev/null; then
		echo "No parameters found. Exiting."
		return 1
	fi
	if [ -z "$2" ] 2> /dev/null; then
		echo "No second parameter found with URL. Exiting."
		return 1
	fi
	if ! [ "$1" -eq "$1" ] 2>/dev/null; then
		echo "The first parameter does not appear to be an integer. Exiting."
		return 1
	fi
	# Doesn't check if there is a missing or valid [x-y] range in the URL
	rangestart=`echo "$2" | gsed -E 's/.*\[([^-]*)-.*/\1/'`
	rangeend=`echo "$2" | gsed -E 's/.*\[.*-([^]]*)\].*/\1/'`
	i=$rangestart
	while [ "$i" -le "$rangeend" ]; do # no variables in  {x..y} loop
		url=`echo "$2" | gsed -E "s/\[[^]]*\]/$i/"`
		echo "Downloading $i of $rangeend."
		curl "$url" -o "$i.jpg"
		sleep $1
		i=$(($i+1))
	done
}


mkpdf () {
	dirname=$(basename "$PWD")
	echo "$dirname.pdf"
	rename 's/\d+/sprintf("%04d",$&)/e' *.jpg
	img2pdf *.jpg -o "../$dirname.pdf"
}

doall () {
	for d in */; do
		( cd "$d" && mkpdf )
	done
}

if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
set -o emacs

# Bash Prompt Customization: [time user] path $
PS1="\[\033[36m\][\t\[\033[m\] \[\033[36m\]\u]\[\033[m\] \[\033[1;33m\]\w\[\033[m\] \$ "
PS2='> '

# Searches following paths when doing cd:
CDPATH=".:~:~/Documents/Docs:~/shell:~/Desktop"

# Does the following do anything? I don't even have this username or rvm installed on my macbook air:
# [[ -s "~/.rvm/scripts/rvm" ]] && source "~/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# This not working on desktop, not installed:
# eval "$(rbenv init -)"
eval "$(rbenv init -)"

# Add to python path:
# export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH



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

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
PATH="/Users/kml/Library/Python/3.6/bin:${PATH}"
export PATH

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
