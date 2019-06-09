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
set ruler
set smartindent
set tabstop=4
set timeoutlen=600
set scrolloff=2
set visualbell t_vb=".
set wrap
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
" Copy to X CLIPBOARD
map <leader>cc :w !xsel -i -b<CR>
map <leader>cp :w !xsel -i -p<CR>
map <leader>cs :w !xsel -i -s<CR>
" Paste from X CLIPBOARD
map <leader>pp :r!xsel -p<CR>
map <leader>ps :r!xsel -s<CR>
map <leader>pb :r!xsel -b<CR>

