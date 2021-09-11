## What is Vim?


## Important Vim commands:

```
vi file_name_to_open
when opened you are in command mode, press i for goig to insert mode and add data
press esc to exit to command mode

When in command mode:
> take cursor to specific line and press dd to delete that line
> 10dd - delete 10 lines from the cursor's current position
> :89,91d - delete data from lines 89 to 91
> :89d - delete line 89

> dG - delete entire file   --> or :d (deletes all the lines froma  file)
When you learn about deleting; learn about undoing wrongfully deleted stuff as well:
:u  undo the last changes
:2u last 2 changes


Adding line numbers to VIM:
> :set number
> :set nonumber

> Got to specific line (line 50) on vim- :50

> :w - save changes
> :q - exit file
> :wq - save and exit file
> :q! - quit but donot save changes
> :w! - force save changes to file




```

Vim at its own is a very basic editor; for editing code there some settings need to be made; which are done in the ~/.vimrc


`----Current Configuration starts here for ~/.vimrc -------`
```
" Theme
 syntax enable
" for vim 7
 set t_Co=256

" for vim 8
 if (has("termguicolors"))
  set termguicolors
 endif


set nocompatible              " required
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set mouse=a

syntax on

filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" All Plugins

Plugin 'mhartington/oceanic-next'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'zxqfl/tabnine-vim'
Plugin 'frazrepo/vim-rainbow'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


call vundle#end()            " required
filetype plugin indent on    " required


" setting horizontal and vertical splits
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za


" Setting up indendation

au BufNewFile, BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile, BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" setting up pyflakes

let python_highlight_all=1
syntax on

" nerd tree settings
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" setting up line numbering
set nu

" Rainbow bracket settings
let g:rainbow_active = 1

```
----Current Configuration ends here------
Customizing vim links: 
* https://dev.to/shahinsha/how-to-make-vim-a-python-ide-best-ide-for-python-23e1
