# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="eastwood"
ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"
ZSH_THEME="gnzh"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
plugins=(git
         zsh-autosuggestions
         zsh-syntax-highlighting
         sudo
         dotenv
         copypath
         jsontools
         macos
	 docker-completion
	 update-plugin
	 you-should-use
	 send
	)

source $ZSH/oh-my-zsh.sh

# User configuration

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
set -o vi
#alias ll='ls -lh'
#alias l='ls -lhrt'
#
alias brewup='brew update; brew upgrade; brew cask upgrade; brew doctor'
alias whatsmyip='dig +short myip.opendns.com @resolver1.opendns.com'

# aws sso credential refresh
alias aws_sandbox_config='aws configure sso --profile FPAC_Developer-260540542855'
alias aws_sandbox_login='aws sso login --profile FPAC_Developer-260540542855'

# run ansible-playbook from docker image from ~/DEV/ansible
alias ansible_playbook="docker run -i --rm  --platform linux/amd64  -v ~/.aws:/root/.aws  -v $(pwd):/root/  ansible:latest"

# python
alias python=python3
alias pip=pip3

# git
alias gstat="git status"

# terraform
alias tplan='terraform plan'
alias tup='terraform plan && terraform apply'
alias tdown='terraform destroy'

# map exa commands to normal ls commands
alias ll="exa -lh -g --icons"
alias l="exa -lh --sort=modified -g --icons"
alias ls="exa --icons"
alias lt="exa --tree --icons -a -I '.git|__pycache__|.mypy_cache|.ipynb_checkpoints'"

# show file previews for fzf using bat
alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
 
# sqlplus alias
alias sqlplus='docker run -it --rm sqlplus:latest sqlplus '
alias psql='docker run -it --rm postgres:alpine psql '

# Init pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# autojump "j" directory jumper
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/davidcolon/DEV/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/davidcolon/DEV/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/davidcolon/DEV/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/davidcolon/DEV/google-cloud-sdk/completion.zsh.inc'; fi

# GNU PATH
PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
#
# AWS
alias show_rds_instances="aws --profile FPAC_Developer-260540542855 rds describe-db-instances --output json | jq '.DBInstances[]| [.DBInstanceIdentifier, .DBInstanceArn]'"
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i
