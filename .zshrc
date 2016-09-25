# 魔法の呪文
autoload -U compinit
compinit
autoload zed

# プロンプト設定
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }

PROMPT='%B${vcs_info_msg_0_}%F{yellow}[%~]%f%b
%B[%n]%F{yellow}%%%f%b '
#RPROMPT

zstyle ':completion:*:default' menu select=1
export LS_COLORS='di=01;32:ln=01;36:so=35:pi=33:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors 'di=01;32' 'ln=01;36' 'so=35' 'ex=01;31' 'bd=46;34' 'cd=43;34'
bindkey -e # emacs風操作

# 環境変数
HISTFILE=$HOME/.zsh_history
HISTSIZE=300
SAVEHIST=300

# オプション設定
setopt auto_cd
setopt correct
setopt auto_pushd # cdコマンド履歴
setopt pushd_ignore_dups
setopt hist_ignore_all_dups # ヒストリ上で重複した古いコマンドを削除


# Alias
alias ls="ls -F --color=auto"
alias ll="ls -lh"
alias la="ls -a"
alias grep="grep --color=auto"
alias ...="cd ../.."
alias ....="cd ../../.."
alias emacs="emacs -nw"
alias c="clear" 
alias h="history -i"
alias rm="rm -i"
alias mkdir="mkdir -p"
alias s="source"
alias weather="curl wttr.in"

# suffix alias
alias -s jpg="shotwell"
alias -s png="shotwell"
alias -s gif="shotwell"
alias -s html="google-chrome"
alias -s pdf="evince"
alias -s ogg="audacious" 
alias -s m4a="audacious" 
alias -s opus="audacious" 

# 関数定義
function tre(){
    grep $1 ~/dict/gene-utf8 -A 1 -wi 
}

function trj(){
    grep $1 ~/dict/gene-utf8 -B 1 -wi
}

function mktb(){
    cp $HOME/work/verilog/tb/tb.v ./$1
    echo generate a testbench here.
}

# auto execute command
screenfetch
