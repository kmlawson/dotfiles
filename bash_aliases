# Aliases here borrow heavily from mathiasbynens and others

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias cdl='cd $(ls -lt | grep ^d | head -1 | cut -b 45-)'
# Shortcuts
alias mark='~/dotfiles/coms/mark.sh'
alias vimhelp='mark ~/dotfiles/docs/vimhelp.md'
alias sta="cd /Users/kml/Dropbox/St.\ Andrews/Teaching"
alias d="cd ~/Dropbox"
alias dx="cd ~/Dropbox"
alias art='cd ~/Documents/Docs/Articles; ls'
alias dia='cd ~/Documents/Docs/Me/Log; ls'
alias ref='cd ~/Documents/Docs/Reference; ls'
alias wl='cd ~/shell/writing/; ls; cd $(ls -lt | grep ^d | head -1 | cut -b 45-)'
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

# alias python="python3"
# alias pip="pip3"

# Diary entries
alias dyw="pday -s 'work'"
alias dy='pday'
alias dyl='pday -o -p -l'
alias dywl="pday -s 'work' -o -p -l"

alias slog="~/shell/slogger/slogger"
alias do="dayone new"
alias dn="doing now"
alias dr="doing done; doing recent 1 | dayone new"
alias d1="open -a '/Applications/Day One.app'"

# Edit key files:
alias edv='mvim ~/.vimrc'
alias eda='mvim ~/.bash_aliases'
alias edhs='mvim ~/dotfiles/docs/commandline.md'
alias edhv='mvim ~/dotfiles/docs/vimhelp.md'
alias edp='mvim ~/.bash_profile'

# Class Navigation

alias 1008='cd /Users/kml/Dropbox/St.\ Andrews/Teaching/MO1008/Feedback'
alias 3337='cd /Users/kml/Dropbox/St.\ Andrews/Teaching/MO3337/Feedback'
alias 3335='cd /Users/kml/Dropbox/St.\ Andrews/Teaching/MO3335/Feedback'
alias 4971='cd /Users/kml/Dropbox/St.\ Andrews/Teaching/MO4971/Feedback'
alias 3936='cd /Users/kml/Dropbox/St.\ Andrews/Teaching/MO3936/Feedback'
alias 3351='cd /Users/kml/Dropbox/St.\ Andrews/Teaching/MO3351/Feedback'
alias 3424='cd /Users/kml/Dropbox/St.\ Andrews/Teaching/MO3424/Feedback'
alias 4999='cd /Users/kml/Dropbox/St.\ Andrews/Teaching/Undergraduate\ Dissertation\ Marking'

# Other Navigation

alias clogs='cd /Users/kml/Dropbox/St.\ Andrews/Clogs'

# Feedback Template Scripts
alias fbsetup='~/shell/fbsetup.rb' # New Template Setup script
alias pfb='~/shell/pfb.rb' # Template for Presentation Feedback
alias efb='~/shell/efb.rb' # Template for Essay Feedback
alias dfb='~/shell/dfb.rb' # Template for Undergraduate Dissertation Feedback
alias gfb='~/shell/gfb.rb' # Template for MO1008 Gobbets
alias cfb='pandoc -S --latex-engine=xelatex -V geometry:margin=1in -o'
alias xfb='~/shell/xfb.rb'
alias markit='~/shell/mark.rb'
alias marktwo='~/shell/marktwo.rb'

# Source your profile:
alias sa='source ~/.bash_profile'

alias lr='ls -R'
alias ls='ls -G'
alias ld='ls -lth'                  # list by date (recent first)
# list by recent modified, only first 10 lines
alias lm='ls -lth | head'
alias dirs='ls -alFG | grep /'      # list directories
alias v='mvim'

# Open Files:

alias hs='mark /Users/fool/dotfiles/docs/commandline.md'
alias hv='mark /Users/fool/dotfiles/docs/vimhelp.md'

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


