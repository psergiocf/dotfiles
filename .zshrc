# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="fino-time"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# -------------------------------------------------------------------------------
# MAKE TERMINAL BETTER
# -------------------------------------------------------------------------------

alias ll='ls -FGlAhp'           # Preferred 'ls' implementation

alias vbp='more ~/.zshrc'       # vbp:  Open .zshrc in view mode
alias ebp='vim ~/.zshrc'        # ebp:  Open .zshrc in edition mode
alias sbp='source ~/.zshrc'     # sbp:  Reload .zshrc

alias ..="cd .."
alias ....='cd ../..'

# -------------------------------------------------------------------------------
# SEARCHING
# -------------------------------------------------------------------------------

alias qfind="find . -name "                                                  # qfind:    Quickly search for file
alias rrnm="find . -name 'node_modules' -type d -prune -exec rm -rf '{}' +"  # rrnm:     Remove 'node_modules' recursively
ff () { /usr/bin/find . -name "$@" ; }                                       # ff:       Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }                                   # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }                                   # ffe:      Find file whose name ends with a given string

# -------------------------------------------------------------------------------
# NETWORK
# -------------------------------------------------------------------------------

alias ifc='ifconfig'                                                             # ifc:          Show IPs
alias myip="ifconfig | grep \"inet \" | grep -Fv 127.0.0.1 | awk '{print \$2}'"  # myip:         Shows the IP
alias netCons='lsof -i'                                                          # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'                                         # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'                                          # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'                                # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'                                # lsockT:       Display only open TCP sockets
alias allPorts='sudo lsof -i'                                                    # allPorts:     All connections
alias openPorts='sudo lsof -i | grep LISTEN'                                     # openPorts:    All listening connections
alias estabPorts='sudo lsof -i | grep ESTABLISHED'                               # estabPorts:   All established connections
alias ip="ifconfig | grep \"inet \" | grep -Fv 127.0.0.1 | awk '{print \$2}'"
alias ports="netstat -anvp tcp | awk 'NR<3 || /LISTEN/'"
kill_port() { lsof -i tcp:"$*" | awk 'NR!=1 {print $2}' | xargs kill -9 ;}

# -------------------------------------------------------------------------------
# Docker
# -------------------------------------------------------------------------------
export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin/"

# -------------------------------------------------------------------------------
# GIT
# -------------------------------------------------------------------------------
alias ga='git add'
alias gbr='git branch'
alias gbra='git branch -a'
alias gbrr='git branch -r'
alias gci='git commit'
alias gcl='git clone'
alias gco='git checkout'
alias gft='git fetch'
alias gl='git log'
alias gmg='git merge'
alias gph='git push'
alias gpl='git pull'
alias gpt='git tag -l | xargs git tag -d && git fetch -t'
alias grt='git remote'
alias grs='git reset'
alias gst='git status'
alias gsh='git stash'
alias gtg='git tag -l'
alias grv='git revert'
alias gdi='git diff'

# -------------------------------------------------------------------------------
# Github
# -------------------------------------------------------------------------------
#export PERSONAL_GITHUB_TOKEN=[PERSONAL_GITHUB_TOKEN]

# -------------------------------------------------------------------------------
# PNPM
# -------------------------------------------------------------------------------
alias pn="pnpm"

# -------------------------------------------------------------------------------
# NPM
# -------------------------------------------------------------------------------
#export PERSONAL_NPM_TOKEN=[PERSONAL_NPM_TOKEN]

alias rm_nested_node_modules="find . -name 'node_modules' -type d -prune -exec rm -rfv '{}' +"                  # rm_nested_node_modules: Deletes node_modules recursively

# -------------------------------------------------------------------------------
# jEnv
# -------------------------------------------------------------------------------
#export PATH="$HOME/.jenv/bin:$PATH"
#eval "$(jenv init -)"

# -------------------------------------------------------------------------------
# Java
# -------------------------------------------------------------------------------
#export JAVA_HOME="/usr/local/Cellar/openjdk@11/11.0.23/libexec/openjdk.jdk/Contents/Home"

# -------------------------------------------------------------------------------
# Android
# -------------------------------------------------------------------------------
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# -------------------------------------------------------------------------------
# asdf
# -------------------------------------------------------------------------------
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"     # Add asdf shims to PATH
