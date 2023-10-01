ZSH="$HOME/.oh-my-zsh/"
export ZSH="$HOME/.oh-my-zsh/"
ZSH_THEME="keyitdev"
plugins=( kubectl zsh-syntax-highlighting zsh-autosuggestions )

ZSH_CACHE_DIR="$HOME/.cache/oh-my-zsh"
if [[ ! -d "$ZSH_CACHE_DIR" ]]; then
  mkdir "$ZSH_CACHE_DIR"
fi

source "$ZSH"/oh-my-zsh.sh


# git
alias g="git"
alias gad="git add --all"
alias gcm="git commit -m"
alias gcms="git commit -S -m"
alias gph="git push"
alias gpl="git pull"
alias gcl="git clone"
alias gin="git init"

alias gst="git status"
alias glg="git log -n 5"
alias glgr="git reflog"
alias gdf="git diff"

alias gbr="git branch"
alias gsw="git switch"
alias gch="git checkout"
alias gra="git remote add origin git@github.com:"
alias grs="git remote set-url origin git@github.com:"

# other
alias nv="nvim"
alias la="ls -alF"
alias h="history|grep"
alias c="clear" # I know about ctrl l etc.
alias logout="killall -KILL -u $USER"
alias files="nemo"
alias files.="nemo ."
alias help="cat ~/.zshrc | less"

# cd
alias ..="cd .."
alias ....="cd ../.."
alias ......="cd ../../.."
alias ........="cd ../../../.."

# dotfiles config
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
dotfiles config --local status.showUntrackedFiles no

# k8s
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
alias kctx="kubectl ctx"
alias kns="kubectl ns"
source <(kubectl completion zsh)

# starship
eval "$(starship init zsh)"

alias k=kubectl
complete -F __start_kubectl k
export KUBE_EDITOR=nvim

# backspace delete word 
bindkey '^H' backward-kill-word

# language 
# setxkbmap -option 'grp:win_space_toggle'
# setxkbmap -layout us,ir
