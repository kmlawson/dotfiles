alias t='/Users/fool/shell/scripts/todo.sh -d /Users/fool/.todo'
alias lr='ls -R'
alias ls='ls -G'
alias vi='vim'
alias v='mvim'
alias spider=/Applications/SpiderOak.app/Contents/MacOS/SpiderOak
alias cleanlinks='for f in *; do mv -- "$f" "${f//_/ }"; done'
alias bbup='rsync -avE --delete /Users/fool/Documents/Docs/Books/ /Volumes/Pergamum/Books' 
alias myip='MYIP=`curl -s 'http://checkip.dyndns.org' | grep -o "[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*"`; echo $MYIP; echo $MYIP > /Users/fool/Documents/Dropbox/shell/nanna-ip.txt'
alias eda='mvim ~/.bash_aliases'
alias art='cd ~/Documents/Docs/Articles'
# Unzip and untar:
alias uz='tar xvfz'
alias edv='mvim ~/.vimrc'
# Quit and application softly by name:
alias q='appswitch -qa'


alias apps='ps-ax'
alias spideroak='open /Applications/SpiderOak.app/'

alias mstart='sudo /Library/StartupItems/MySQL/MySQL start'
alias mysql='/usr/local/mysql/bin/mysql'
alias mysqladmin='/usr/local/mysql/bin/mysqladmin'

