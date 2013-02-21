SHELL=/bin/bash
export EDITOR=/usr/bin/vim
export CVS_RSH=ssh
export CVSROOT=:ext:kmlawson@cvs.sourceforge.net:/cvsroot/owls
export CLICOLOR="true"
export DISPLAY=:0.0
PATH="/usr/local/bin:/usr/local/sbin:/usr/local/go/bin:/usr/local/share/python:${PATH}"
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
set -o vi

#Two commands for autocompletion for todo script:
source ~/.bash_completion.d/todo_completer.sh
complete -F _todo_sh -o default t


PS1='\h:\w\$ '
PS2='> '


[[ -s "/Users/fool/.rvm/scripts/rvm" ]] && source "/Users/fool/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
eval "$(rbenv init -)"
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
