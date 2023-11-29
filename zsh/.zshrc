# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export KEYTIMEOUT=1

# Path to your oh-my-zsh installation.
# export ZSH=/usr/local/bin/zsh
export GOPATH=~/go
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH
export GOPRIVATE="github.com/astronomer"
export PATH=$HOME/bin:/usr/local/bin:$PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

# Set editor.
export EDITOR=vim

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(git ssh-agent z zsh-syntax-highlighting)

if [[ ! "$LD_LIBRARY_PATH" =~ "intellij" ]]; then
    plugins+=(tmux)
fi

source ~/.oh-my-zsh/oh-my-zsh.sh

# User configuration

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

# Vim
alias vi='vim'

# Docker aliases
alias ds='docker stop $(docker ps -aq)'
alias dk='docker kill $(docker ps -aq)'
alias dr='docker rm $(docker ps -aq)'
alias dc='docker-compose'
alias dcu='docker-compose up --build'
alias dcud='docker-compose up --build -d'
alias dcdv='docker-compose down -v'
alias di='docker images'
alias dps='docker ps -a'
alias dsp='docker system prune --force'
alias dspv='docker system prune --volumes --force'
alias dspva='docker system prune --volumes --all --force'
alias dsdf='docker system df'
alias dnuke='dspva'
alias dsdf='docker system df'
alias dl='docker logs'
alias de='docker exec -it'

# Kubernetes
alias kx='kubectx'
alias kxp='kubectx -'
alias kn='kubens'
alias kc='kubectl'
alias kp='kubectl proxy &'
alias kgp='kubectl get pods -o wide'
alias kdp='kubectl delete pod'
alias kgs='kubectl get svc -o wide'

# Other aliases
alias l='LC_COLLATE=C gls -lah --group-directories-first --color=always'
alias dots='cd $HOME/dotfiles && vim .'
alias ipaddr='curl ifconfig.co'

# Astronomer
alias astroupdate='curl -sL https://install.astronomer.io | sudo bash'

# Alias vim to nvim
# alias vim='nvim'

# Disable C-s as XOFF
# stty -ixon

# Python virtualenvwrapper
# export WORKON_HOME=~/.virtualenvs
# source /usr/bin/virtualenvwrapper_lazy.sh

# Initialize pyenv
# eval "$(pyenv init -)"

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# For GPG in git
export GPG_TTY=$(tty)

# Set grep highlight color
export GREP_COLOR='1;32'

# Set github token
export GITHUB_DATABASE_TOKEN=$(security find-generic-password -a "$USER" -s "github_database_token" -w)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /Users/schnie/.docker/init-zsh.sh || true # Added by Docker Desktop
