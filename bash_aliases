# Aliases here borrow heavily from mathiasbynens and others

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Shortcuts
alias mark='/Applications/Marked.app/Contents/Resources/mark'
alias d="cd ~/Dropbox"
alias sta="cd ~/Documents/Docs/St.\ Andrews/"
# alias do="cd ~/Downloads"
alias dr="cd ~/Documents/Dropbox"
alias art='cd ~/Documents/Docs/Articles; ls'
alias dia='cd ~/Documents/Docs/Me/Log; ls'
alias ref='cd ~/Documents/Docs/Reference; ls'
alias vh='mark ~/Documents/Docs/Reference/vimhelp.md'
alias md='cd ~/shell/writing/; ls'
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias m="mate ."
alias o="open"
alias oo="open ."
alias g="git"
alias h="history"
alias sudo='sudo '
alias chrome="open -a \"Google Chrome\""

alias edv='mvim ~/.vimrc'
alias eda='mvim ~/.bash_aliases'
# Source your profile:
alias sa='source ~/.bash_profile'
alias edp='mvim ~/.bash_profile'

alias lr='ls -R'
alias ls='ls -G'
alias ld='ls -lth'                  # list by date (recent first)
# list by recent modified, only first 10 lines
alias lm='ls -lth | head'
alias dirs='ls -alFG | grep /'      # list directories
alias v='mvim'

# Top CPU hogs:
alias cpu='top -o cpu'
# Top Memory hog:
alias mem='top -o rsize' 
alias tc='top -c' # then shift-m to sort by memory
# Show 4 biggest CPU hogs:
alias psc='ps aux | sort -nk +3 | tail -4'
# Show 4 biggest memory hogs:
alias psm='ps aux | sort -nk +4 | tail -4' 
# Make executable
alias ax="chmod a+x"

# Show a file in QuickLook:
alias ql="qlmanage -p &>/dev/null"
alias preview='open -a "Preview" '
# Command line and GUI versions of Spideroak:
alias spider=/Applications/SpiderOak.app/Contents/MacOS/SpiderOak
alias spideroak='open /Applications/SpiderOak.app/'

# Used for cleaning up file names in downloads:
alias cleanlinks='for f in *; do mv -- "$f" "${f//_/ }"; done'

alias myip='MYIP=`curl -s 'http://checkip.dyndns.org' | grep -o "[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*"`; echo $MYIP; echo $MYIP > /Users/fool/Documents/Dropbox/shell/nanna-ip.txt'

# SSH to my Raspberry Pi
alias berry='ssh pi@berry'

# Unzip and untar:
alias uz='tar xvfz'

# Quit and application softly by name:
alias q='appswitch -qa'


alias apps='ps-ax'
alias mytree="find . -type d | sed -e 1d -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|-/' | /usr/local/bin/bbedit -t `pwd`"


# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Ring the terminal bell, and put a badge on Terminal.app’s Dock icon
# (useful when executing time-consuming commands)
alias badge="tput bel"

alias newn='mvim ~/Dropbox/Elements/new.md'
alias sl='cd ~/shell/; ls'
alias il='cd ~/shell/installs/'

