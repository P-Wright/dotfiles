## Option 1: How to Interact with system clipboard using xsel: centos7, vim, tmux
    - vscode install includes xsel: "/home/pwright/.vscode/extensions/vscodevim.vim-0.16.14/node_modules/clipboardy/fallbacks/linux/xsel"
    - tmux -V reports on default centos7 to be 1.8 (old version)
    - when you execute xsel it outputs the system clipboard
    - you can pipe text to (i.e. stdin) and it stores the text is sys clipboard:
        [pwright@localhost ~]$ echo "this is a test" | xsel
        [pwright@localhost ~]$ xsel
        this is a test
        [pwright@localhost ~]$
    - following command sets up tmux C-[ (default cmd to copy selection) to use xsel:
        - # Automatically copy tmux selection to X clipboard
        - bind -t vi-copy Enter copy-pipe "xclip -i -selection clipboard"
    - In vim and tmux, C-shift-v will past from the system clip board

## Option 2: How to interact with system clipboard using vimx and xclip for tmux:
- vim and +clipboard: https://vi.stackexchange.com/questions/84/how-can-i-copy-text-to-the-system-clipboard-from-vim
- For vim, yum install vim-x11
- The system clip board can be referenced with the '+' register
    - To yank to system clipboard:  "+y
    - To paste from the system clipboard:  "+p
    - 
- https://www.freecodecamp.org/news/tmux-in-practice-integration-with-system-clipboard-bcd72c62ff7b/

## How to setup bash to use vi mode effectively
    - TBD

## How to get vim cursor to change when running tmux   
    - TBD

## Easy motion plug-in vs. Effective nav with base vim commands
    - TBD
 
