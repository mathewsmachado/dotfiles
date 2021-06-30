# ============================= ENVIRONMENT VARIABLES
export ZSH="$HOME/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"

export PATH="/opt/lampp/bin:$PATH"

# ============================= APPS CONFIG
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

eval `dircolors $HOME/.themes/gnome-terminal/.dir_colors/dircolors`

if [[ $TILIX_ID ]]; then
  source /etc/profile.d/vte.sh
fi

# ============================= ZSH CONFIG
COMPLETION_WAITING_DOTS="true"
plugins=(zsh-autosuggestions zsh-syntax-highlighting)

ZSH_THEME="spaceship"
SPACESHIP_DIR_TRUNC="3"
SPACESHIP_PROMPT_ORDER=(dir git node exec_time line_sep exit_code char)
SPACESHIP_CHAR_SYMBOL="❯ "

source $ZSH/oh-my-zsh.sh

# ============================= ALIASES
unalias -m "*" # remove all built-in aliases

# code
alias c.="code ."
alias c.r="c. -r"

# cd
alias cdcol="cd $HOME/college/3-periodo-2021.1"
alias cdcou="cd $HOME/courses"
alias cdd="cd $HOME/desktop"
alias cddo="cd $HOME/docs"
alias cd.="cd $HOME/dotfiles"
alias cdp="cd $HOME/projects"
alias cds="cd $HOME/studies"
alias cdt="cd $HOME/templates"
alias cdw="cd $HOME/work"

# clipboard
cb() { $@ | xclip -sel clip } # do not accept 'aliased' params
alias notes="cb echo ⭕✅👉💧"
alias taviao="cb echo \"¯\_(ツ)_/¯\""
alias travessao="cb echo \"—\"" 
alias puud="pwd && cb pwd"

# dotfiles
alias .d="code $HOME/dotfiles"
alias .tr="tmux source-file $HOME/dotfiles/tmux/.tmux.conf"
alias .vr="source $HOME/dotfiles/nvim/init.vim"
alias .zr="source $HOME/dotfiles/zsh/.zshrc"

# exit
alias q="exit"

# git
alias g="git"
alias ga="echo -n \"Branch: \" && g branch --show-current && echo \"Don't commit on MASTER\" && g add"
alias ga.="ga ."
alias gb="g branch -v"
alias gc="g commit -m"
alias gck="g checkout"
alias gd="g diff"
alias gl="g log --oneline --decorate"
alias gla="gl --all"
alias gpl="g pull"
alias gps="g push"
alias gpsom="gps origin main"
alias gr="g remote -v"
alias gs="g status -u"

# github
alias ghme="xdg-open https://github.com/MathewsMachado"

# kill: https://stackoverflow.com/questions/11583562/how-to-kill-a-process-running-on-particular-port-in-linux
killport() { kill -9 $(lsof -t -i:$1) }

# less
-() { $@ | less }

# list
alias la="ls -Ah"
alias lal="ls -lAh"
alias ls="ls --color=tty"
alias lsl="ls -l --color=tty"

# localhost
lh() { google-chrome http://localhost:$1 }

# mkdir
alias mk="mkdir -p"
md() { mk $1 && cd $1 }

# run
runc() { gcc "$1.c" -o $1; "./$1"; rm $1 }
runj() { javac "$1.java"; java $1; rm ./**/*.class }
runp() { sudo /opt/lampp/lampp "$1apache"; sudo /opt/lampp/lampp "$1mysql" }

# rm
alias rm="rm -rf"
alias rmgit="rm .git"
alias rmnm="rm node_modules"

# script
alias backup="chmod +x $HOME/.scripts/backup.sh && $HOME/.scripts/backup.sh"

# shutdown
alias off="shutdown -P now"

# tree
alias 3="tree -d"

# whatis
alias is="whatis"

# yarn
alias y="yarn"
alias ya="y add"
alias yad="y add --dev"
alias yb="y build"
alias yd="y dev"
alias yr="y remove"
alias ys="y start"
alias ysb="y storybook"
alias yt="y test"
alias ytw="y test:watch"

# ============================= KEYBINDINGS
# https://github.com/gnunn1/tilix/issues/1498
# https://jdhao.github.io/2019/06/13/zsh_bind_keys/
bindkey "^H" backward-kill-word
bindkey "^[[3;5~" kill-word
