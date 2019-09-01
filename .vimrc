set expandtab
set incsearch
set list
set listchars=tab:▸\ ,eol:¬
set nohlsearch
set nojoinspaces
set number relativenumber
set laststatus=2
set shiftwidth=4
set smartcase
set econding=utf-8
set ruler
set smartindent
set hidden
set tabstop=4
set timeoutlen=600
set scrolloff=2
set visualbell t_vb=".
set wrap
set path+=**
set wildmenu
" Setup options for hard-wrapping test with gq{motion} command
set formatoptions=tcq
inoremap kj <Esc>
nnoremap gb :ls<CR>:b<Space>
command! -nargs=1 Ngrep lvimgrep "<args>" $NOTES_DIR/**/*.md
nnoremap <leader>[ :Ngrep 
" Leaders {{{2
command! -nargs=1 NewPost call NewPost("<args>")
fun! NewPost(args)
    let l:file = "$BLOG/_posts/" . strftime("%Y-%m-%d") . "-" . tolower(substitute(a:args, " ", "-", "g")) . ".markdown"
    exe "e!" . l:file

    put ='date: '''.strftime("%Y-%m-%d H:M:S").''''
    put ='layout: post'
    put ='slug: '.l:file
    put ='title: '.a:args
    put ='categories:'
    put ='- blog'
    put ='---'
endfun
" Use sys clipboard as default (must use vimx after yum install vim-xll)
set clipboard=unnamedplus
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**
" Display all matching files when we tab complete
set wildmenu

autocmd InsertEnter * setlocal nocursorline
autocmd VimEnter,InsertLeave * setlocal cursorline
"setup solarized theme
syntax enable
set background=dark
colorscheme solarized
" Enable md syntax formatting for .md file extension
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
" Put vertical line a 80
set colorcolumn=80
" Enable indent folding for python files
autocmd FileType python setlocal foldmethod=indent
" Without next, blank lines would start new fold...
autocmd FileType python setlocal foldignore=
autocmd FileType python setlocal foldnestmax=2
" PEP8 indents if python
autocmd FileType python setlocal tabstop=4
autocmd FileType python setlocal softtabstop=4
autocmd FileType python setlocal shiftwidth=4
autocmd FileType python setlocal textwidth=79
autocmd FileType python setlocal expandtab
autocmd FileType python setlocal autoindent
autocmd FileType python setlocal fileformat=unix

highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
autocmd FileType python set makeprg=pylint\ --reports=n\ --ignored-modules=pandas\ --output-format=parseable\ %:p
autocmd FileType pythone set errorformat=%f:%l:\ %m
" Remap leader to space
let mapleader="\<Space>"
" Command to build Ctags database: file.txt should be relative to project root and 
" one path (no leading slashes) per line to exclude
" nnoremap <leader>t :!ctags -R --exclude=@<file.txt> <project_root_path> <CR>

"Setup C-n autocomplete to not search include files by default as this can be SLOW
"set complete=.,w,b,u,t

"Quick command ":Fblah term" to search only search specific folders and put results in quickfix list
"func! SearchBlah(term)
"    let s:command = "grep -r --include \*.h --include \*.cpp --include \*.c . a:term . " <PROJECT_FOLDER_PATH>
"    execute(s:command)
"endfunc
"command! -nargs=1 Fblah call SearchBlah(<f-args>)

"Map command to run clang-format
"map <C-K> :pyf <path-to-this-file>/clang-format.py<cr>
"imap <C-K> <c-o>:pyf <path-to-this-file>/clang-format.py<cr>

