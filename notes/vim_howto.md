# Setup
- To remap CAPS LOCK on windows https://www.techrepublic.com/article/how-to-remap-the-caps-lock-key-and-avoid-future-frustration/
  - download server 2003 resource kit
  - C:\Program Files (x86)\Windows Resource Kits\Tools\RemapKeys

# Navigation

# Help
- Important to understand:
  - tags/bookmarks show up as green 'ins-completion' at the line they are defined
  - 'links' to these bookmarks are blue and you can jump to the line where that
     bookmark is defined with C-]
  - ex. ins-completion
  - help <text> TAB will open wildmenu with all bookmarks that contain text
  - bookmark names do not contain spaces
  - bookmarks will usually be defined for each key stroke combination, with a unique prefix for
    the topic that uses the command, ex. insert mode keystrongs will have something like i_CTRL-X_CTRL-L

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
# Opening files
- How to quickly open file in same dir as current file?
  - :e %:h <tab> - will expand to the currently selected buffers directory
  - % - current file path
  - h 'head' of current file path

# Autocompletion
  - General: in pop-window for matches
    - C-N/C-P to go forward back
    - C-y to select item under cursor
  - Autocomplete using multiple sources
    - C-n will autocomplete using all the options specified with "set complete=.,w.b,u,t,i" (by default)
      - . is current buffer
      - w is all buffers in current window
      - u are all unloaded buffers
      - t are tags
      - i are include files:  IN A BIG CODE BASE THIS WILL BE TOO SLOW and you will want to remove in vim.rc
    - C-n is a good option for source code in most cases since it will cover local variables not 
      yet in tag database and also tags
      
  - Autocomplete a file path? 
    - C-x C-f while over partial name
  - Autocomplete a keyword in the current file:
    - C-x C-n
  - Autocomplete a tag that is in current CTAGs database
    - C-x C-]
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


