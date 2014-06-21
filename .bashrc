export GEM_HOME=$HOME/gems
export PATH=$GEM_HOME/bin:$PATH

# Heroku
alias hl='heroku logs --tail'

# Common
alias speed='wget --output-document=/dev/null http://test-debit.free.fr/65536.rnd'
alias s='du -hs'
alias v=vim
alias c=clear
alias ll='ls -lh'
alias lk='ls -Alh'
alias lm='ll -d .[[:alnum:]]* 2> /dev/null || echo "No hidden files here..."'

# Http Server
alias serv='python -m SimpleHTTPServer'

# Lock the screen (when going AFK)
alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Get readable list of network IPs
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias flush="dscacheutil -flushcache" # Flush DNS cache

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"
