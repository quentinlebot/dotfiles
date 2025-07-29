# Initialize dircolors for Linux
if command -v dircolors >/dev/null 2>&1; then
    eval "$(dircolors -b)"
fi

# Disable oh-my-zsh theme (using Starship)
ZSH_THEME=""

# zsh plugins (must be before sourcing oh-my-zsh)
plugins=(
    git 
    web-search
)

source $ZSH/oh-my-zsh.sh

# Zoxide
eval "$(zoxide init zsh)"

# FZF
eval "$(fzf --zsh)"

# FZF with Git right in the shell by Junegunn : check out his github below
# Keymaps for this is available at https://github.com/junegunn/fzf-git.sh
source ~/scripts/fzf-git.sh

# Atuin Configs
export ATUIN_NOBIND="true"
eval "$(atuin init zsh)"
bindkey '^r' atuin-up-search-viins

#----- Vim Editing modes & keymaps ------ 
set -o vi

export EDITOR=nvim
export VISUAL=nvim



# -------------------ALIAS----------------------
# These alias need to have the same exact space as written here

# other Aliases shortcuts
alias c="clear"
alias e="exit"
alias vim="nvim"

# Tmux 
alias tmux="tmux -f $TMUX_CONF"
alias a="attach"

# fzf 
# called from ~/scripts/
alias nlof="~/scripts/fzf_listoldfiles.sh"
# opens documentation through fzf (eg: git,zsh etc.)
alias fman="compgen -c | fzf | xargs man"

# zoxide (called from ~/scripts/)
alias nzo="~/scripts/zoxide_openfiles_nvim.sh"

# Enhanced ls with eza (install with: yay -S eza)
if command -v eza >/dev/null 2>&1; then
    alias ls="eza --no-filesize --long --color=always --icons=always --no-user"
else
    alias ls="ls --color=auto"
fi 

# tree
alias tree="tree -L 3 -a -I '.git' --charset X "
alias dtree="tree -L 3 -a -d -I '.git' --charset X "

# lstr
if command -v lstr >/dev/null 2>&1; then
    alias lstr="lstr --icons"
fi

# git aliases
alias gt="git"
alias ga="git add ."
alias gs="git status -s"
alias gc='git commit -m'
alias glog='git log --oneline --graph --all'
alias gh-create='gh repo create --private --source=. --remote=origin && git push -u --all && gh browse'

alias nvim-scratch="NVIM_APPNAME=nvim-scratch nvim"

# lazygit
alias lg="lazygit"

# ---------------------------------------

# Arch Linux zsh plugins
if [[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

if [[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# opencode
export PATH=/home/snowtea/.opencode/bin:$PATH
