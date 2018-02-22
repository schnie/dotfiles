# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export KEYTIMEOUT=1

# Path to your oh-my-zsh installation.
export ZSH=/home/schnie/.oh-my-zsh

# Set editor.
export EDITOR=vim

# Set some zsh tmux plugin options.
export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_AUTOCONNECT=false

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

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

source $ZSH/oh-my-zsh.sh

# User configuration

export GOPATH=~/go
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH

export PATH=$(ruby -e 'print Gem.user_dir')/bin:$PATH

export PATH=~/.local/bin:$PATH

# export MANPATH="/usr/local/man:$MANPATH"

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

# Pacman aliases
alias paccache='paccache -rk 1'
alias pacorphans='sudo pacman -Rns $(pacman -Qtdq)'
alias pacupdate='yay -Syu'

# npm run aliases
alias ns='npm run start'
alias nd='npm run dev'
alias nb='npm run build'
alias nbi='npm run build-image'
alias npi='npm run push-image'
alias nt='npm run test'
alias ndd='npm run deploy'

# make aliases
alias mr='make run'
alias mb='make build'
alias mt='make test'
alias mi='make install'

# Docker aliases
alias ds='docker stop $(docker ps -aq)'
alias dk='docker kill $(docker ps -aq)'
alias dr='docker rm $(docker ps -aq)'
alias dc='docker-compose'
alias dcu='docker-compose up --build'
alias dcud='docker-compose up --build -d'
alias di='docker images'
alias dps='docker ps -a'
alias dsp='docker system prune --force'
alias dspv='docker system prune --volumes --force'
alias dspva='docker system prune --volumes --all --force'
alias dnuke='dspva'
alias dsdf='docker system df'

# Bluetooth aliases
alias bt='bluetoothctl'
alias bthc='echo -e "power on\nconnect \t\nquit" | bluetoothctl'
alias bthd='echo -e "disconnect\nquit" | bluetoothctl'

# Weather aliases
alias weather='curl wttr.in/Cincinnati'
alias moon='curl wttr.in/Moon'

# Kubernetes
alias kx='kubectx'
alias kxp='kubectx -'
alias kc='kubectl'
alias kp='kubectl proxy &'
kt() {
    # kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep admin-user | awk '{print $1}') | awk '$1 ~ /^token/ {print $2}' | xc
    kubectl api-versions > /dev/null # Quick API call to refresh token if expired
    kubectl config view --minify | grep access-token | awk '{print $2}' | xclip -selection clipboard
    echo "Kubernetes service token is now in clipboard!"
}
# Helm
alias hl='helm list'

# Other aliases
alias l='LC_COLLATE=C ls -lah --group-directories-first --color=always'
alias calc='bc'
alias dots='cd $HOME/dotfiles && vim .'
alias ipaddr='curl ifconfig.co'
alias v='pulsemixer'
alias astroupdate='curl -o- https://cli.astronomer.io/install.sh | bash'
alias xc='xclip -selection clipboard'
alias dul='du -a -h --max-depth=1 | sort -hr'
alias screenshot='scrot -c -d 5'
alias tf='terraform'

# Disable C-s as XOFF
stty -ixon

# Python virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# For GPG in git
export GPG_TTY=$(tty)

# Astronomer CLI
# export PATH="$PATH:$HOME/.astro/"
