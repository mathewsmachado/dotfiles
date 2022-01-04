# ============================= ENVIRONMENT VARIABLES
export ZSH="$HOME/.oh-my-zsh"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"

# ============================= APPS CONFIG
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

if [[ $TILIX_ID ]] || [ $VTE_VERSION ]; then
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
alias cdcol="cd ~/college/4-periodo-2022.1"
alias cdcou="cd ~/courses"
alias cdd="cd ~/desktop"
alias cddo="cd ~/documents"
alias cddocs="cd ~/docs"
alias cddot="cd ~/dotfiles"
alias cdp="cd ~/projects"
alias cds="cd ~/studies"
alias cdsc="cd ~/scripts"
alias cdt="cd ~/templates"
alias cdw="cd ~/work"

# clipboard
cb() { $@ | xclip -sel clip } # do not accept 'aliased' params
alias notes="cb echo ⭕✅👉💧"
alias taviao="cb echo \"¯\_(ツ)_/¯\""
alias travessao="cb echo \"—\"" 
alias puud="pwd && cb pwd"

# df
alias dfp8="df -h | egrep \"(filesystem|p8)\" -i"

# docker
alias d="sudo docker"

# docs
alias statuscode="cat ~/docs/status-code.txt"

# dotfiles
alias zr="source ~/dotfiles/zsh/.zshrc"

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
alias glc="gl | wc -l"
alias gla="gl --all"
alias gpl="g pull"
alias gps="g push"
alias gpsom="gps origin main"
alias gr="g remote -v"
alias gs="g status -u"

# github
alias ghme="xdg-open https://github.com/mathewsmachado"
alias ghfoll="xdg-open https://github.com/mathewsmachado?tab=following"

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
lh() { xdg-open http://localhost:$1 }

# mkdir
alias mk="mkdir -p"
md() { mk $1 && cd $1 }

# run
runc() { gcc "$1.c" -o $1; "./$1"; rm $1 }
runj() { javac "$1.java"; java $1; rm ./**/*.class }

# rm
alias rm="rm -rf"
alias rmgit="rm .git"
alias rmnm="rm node_modules"

# shutdown
alias off="shutdown -P now"

# tlp
alias tlpt="tlp-stat -t"

# whatis
alias is="whatis"

# yarn
alias y="yarn"
alias ya="y add"
alias yad="y add --dev"
yat() { y add $1; yad @types/$1 }
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
