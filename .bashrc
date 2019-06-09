# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
CDPATH=.:~:/local_data/workspace:~/.paths
PATH=~/.paths:$PATH
alias cd="cd -P"


# added by Anaconda3 installer
export PATH="/home/pwright/anaconda3/bin:$PATH"

source scl_source enable devtoolset-7
source scl_source enable llvm-toolset-7
export NOTES_DIR=~/notes
alias xsel=/home/pwright/.vscode/extensions/vscodevim.vim-0.16.14/node_modules/clipboardy/fallbacks/linux/xsel 
export PATH=/home/pwright/.vscode/extensions/vscodevim.vim-0.16.14/node_modules/clipboardy/fallbacks/linux:$PATH
set -o vi
