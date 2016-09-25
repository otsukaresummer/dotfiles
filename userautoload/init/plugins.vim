" プラグイン
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'miyakogi/seiya.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'itchyny/lightline.vim' "ステータスライン変更
NeoBundle 'vimtaku/hl_matchit.vim.git' " 対応するbegin-endのハイライト
NeoBundle 'therubymug/vim-pyte'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'thinca/vim-quickrun'

" color scheme
NeoBundle 'cocopon/iceberg.vim'
NeoBundle 'sjl/badwolf'
NeoBundle 'gosukiwi/vim-atom-dark'
NeoBundle 'tomasr/molokai'
NeoBundle 'wellsjo/wellsokai.vim'
NeoBundle 'pasela/edark.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

colorscheme molokai

