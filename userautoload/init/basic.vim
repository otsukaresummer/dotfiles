set laststatus=2
set noshowmode
"#####表示設定#####
set notitle
set number "行番号を表示する
set showmatch "括弧入力時の対応する括弧を表示
set matchtime=1
set statusline=2

"indent"
set tabstop=4 "インデントをスペース4つ分に設定
"set autoindent
set cindent
set shiftwidth=4
set expandtab

"不可視文字設定"
set list
set listchars=tab:»_,eol:↲,extends:»,precedes:«
set hidden

set backup
set writebackup
set backupdir=$HOME/.vim_backup
:au BufWritePre * let &bex = '.' . strftime("%Y%m%d")

if has("syntax")
syntax on
endif

