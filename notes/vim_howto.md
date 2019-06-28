# Navigation

# Editing
- How do you quickly save while in insert mode?

# Folding
- How do you create folds in a .md text doc (with the basic plug-in I have)?

# Searching
- How do you search a selection?
  - After making a selection,
- How do you search/replace a selection?
- Is there a quicker key command than :noh?
- search for word under cursor?
  - * then n, N
- How does find work for searching across files?
  - put "set PATH+=**" .vimrc file along with "set wildwindow"
  - ```:file *fragment<tab>``` will bring up matches
  - Can also do ```:b *fragment<tab>``` to load just one of the buffers (files) that have previously been edited

# Autocompletion
  - Autocomplete a file path? 
    - C-x C-f while over partial name
  - In command mode (:) how do you paste the current buffer path?
    - Ctrl-R %
    
# Map commands to other tmux panes to leader key
- nnoremap <leader>c :silent !tmux send-keys -t 2 'clear' C-m <Enter> <bar> :redraw! <Enter>
- nnoremap = normal mode, non-recursive, map
- :silent prevents having to hit enter after command executes
- C-m cuases return in the tmux window to execute the command
- <Enter> is interpreted by vim as the end of the command
- <bar> is special symbol allowing multiple vim commands to be chained
- This commands cuases the screen to get messaged so either you have to hit C-l to redraw or add the explicit redraw command


