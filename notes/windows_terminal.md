# Summary of Windows Powershell/Vim Setup
## Powershell basic setup
- install solarized for windows terminal
- for dark, the dash causes invisible chars to fix:
New-item -type file -force $profile //creates a windows terminal profile
run another instance of powershell as admin and type:
Set-ExecutionPolicy RemoteSigned
now, got back to original terminal...
notepad $PROFILE
and paste in **NOTE** see link below about due to bug in terminal have to select the param above the invisible one...
Set-PSReadLineOption -Colors @{
   "Operator" = [ConsoleColor]::Magenta;
   "Parameter" = [ConsoleColor]::Magenta
}
From: https://stevenknox.net/tweaking-powershell-color-scheme-to-play-nice-with-the-new-windows-terminal/

# vim and vim plug-in installs
- Assumes you are using the Vim-Plug plugin manager
- [Install vim for windows](https://www.vim.org/download.php)
    - setup .vimrc in your home dir with your settings file
- [Install git for windows as admin](https://www.develves.net/blogs/asd/articles/using-git-with-powershell-on-windows-10/)
    - Be sure to next configure username and email 
- Download anaconda3.  Open powershell and run 'conda init' - you
  have to do this in order for environment variables to get activated
- Add the vim executable dir to your path
- Add the git bin dir to your path
- Create a local 'utilities' folder in your home dir and add it to
  your path
- Install [bat file previewer for windows](https://github.com/sharkdp/bat/releases)
    - place the single executable in your utilities dir
- Install FZF for windows
    - place the insgle executable in your utilities dir 
- Do the initial Vim-Plug install (it is a powershell command)
- Launch vim and do a Plug-Install to install your plugins

# Powershell FZF
- [see this link](https://medium.com/rkttu/make-your-powershell-7-truly-powerful-eb56b3fbe37f)
- Install-Module PSFzf -Scope CurrentUser
- Remove-PSReadlineKeyHandler 'Ctrl+r'
- Remove-PSReadlineKeyHandler 'Ctrl+t'
- Import-Module PSFzf
(NOTE this only works the first time and is not persistant!!)

# Powerline on Powershell term

Setup Powerline 
https://www.hanselman.com/blog/HowToMakeAPrettyPromptInWindowsTerminalWithPowerlineNerdFontsCascadiaCodeWSLAndOhmyposh.aspx
- Note that you have to go install the CascadiaCodePL from https://github.com/microsoft/cascadia-code/releases?WT.mc_id=-blog-scottha
