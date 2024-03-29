# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="afowler"
#ZSH_THEME="amuse"
#ZSH_THEME="bira"
#ZSH_THEME="kolo"
#ZSH_THEME="mortalscumbag"
ZSH_THEME="philips"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git scala sbt fasd autojump jsontools)

# User configuration

export PATH=/Users/g/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/g/projects/apache-maven-3.2.5/bin:/opt/bin:/Users/g/bin:/usr/local/opt/go/libexec/bin
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias less='less -R'
alias t="tree -C -f"
alias p="ps awux"
alias pg='ps awxu | grep '
alias n="vim ~/NOTES"
alias ds='dirs -v'
alias f='find . | grep '
alias v="vim"
alias lt="ls -lat"

alias ops="ssh gerard@ops"

source "`brew --prefix grc`/etc/grc.bashrc"

function node {
  ssh -A gerard@qtausc-pphd01${1}.quantium.com.au.local
}

function bnode {
  ssh -A gerard@qtausc-pphd01${1}.quantium.com.au.local -F /Users/g/projects/deployment/ansible/cloud-services/ssh.config
}

function dev {
  ssh -A gerard@qtausc-vpcsdev0${1}.quantium.com.au.local
}

function gnode {
  ssh -A gerard@192.168.128.${1}
}

# search commands
function c {
  if [ -z "$1" ]
    then
      cat ~/COMMANDS
    else
      cat ~/COMMANDS | grep $1
  fi
}



# proxy on / off
function proxy {
  if [ -z "$http_proxy" ]
    then 
      export HTTP_PROXY=http://192.168.16.1:8080
      export HTTPS_PROXY=https://192.168.16.1:8080
      export http_proxy=$HTTP_PROXY
      export https_proxy=$HTTPS_PROXY
      echo "proxy set to $HTTP_PROXY"
      echo "proxy set to $HTTPS_PROXY"
    else
      unset http_proxy
      unset https_proxy
      unset HTTP_PROXY
      unset HTTPS_PROXY
      echo "proxy unset"
  fi
}

# prevents shell from erroring out when can't resolve glob, eg. sbt ~test
unsetopt nomatch

# directory stacking
DIRSTACKSIZE=8
setopt autopushd pushdminus pushdsilent pushdtohome

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export SSH_USER=gerard

alias work='ssh gerard@192.168.23.229'
alias edge='ssh gerardp@edge-node.skynet.quantium.com.au'
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
alias qcli="DNS_IPS='192.168.16.190' HOSTNAME_SUFFIX='hal.quantium.com.au' MARATHON_URL=http://qtausc-vpcsdev01:8081 ETCD_URLS=https://qtausc-vpcsdev01:4001 go run $GOPATH/src/qcli/cmd/qcli/*.go -x ~/certs"
alias qclip="DNS_IPS='192.168.81.101,192.168.81.102,192.168.81.103,192.168.81.104,192.168.81.105' HOSTNAME_SUFFIX='skynet.quantium.com.au' MARATHON_URL=http://qtausc-pphd0101.quantium.com.au.local:8081 ETCD_URLS='https://qtausc-pphd0101.quantium.com.au.local:4001,https://qtausc-pphd0102.quantium.com.au.local:4001,https://qtausc-pphd0103.quantium.com.au.local:4001' go run $GOPATH/src/qcli/cmd/qcli/*.go -x ~/certs"
