# Dot Files

Welcome to my dot files, it will allow you to download my configuration for some applications.
I implement a .local folder to keep the stow, backgrounds and other git projects.
It will also create some environment variables to organize the config files. 

## Some Prerequisites
You must install stow to symlink the files and git to download the dot files. (I use arch so we use pacman)
```
sudo pacman -S stow git
```
## As part of these dot files I have included a fast and efficient way to install all of the packages I have, you can install them with the following command. You will probably want to install yay and ttf-ms-fonts.
```
sudo pacman -S --needed - < pk.txt
```
## To apply the symlinks you can use the following command so everything is in the correct location 
```
stow -d ~/.local/df-s -t ~ .
```
## Apps used:
### - kitty , it's a terminal emulator for Wayland, config sets the transparency and font size, and gpu acceleration. 
### - Neovim, text editor, the config sets transparency and line highlighting, and spell check.  
### - Hyprland with the hypr ecosystem, the config sets some shortcuts and input options and a 5 minute screen off timer 
### - Zathura, PDF viwer that runs like lighting, the config adds the selected text to clipboard
### - Zsh is the shell I use, the config adds pretty colors to the ps1 and some useful aliases, remember to add the .cache/zsh directory so you have history in the terminal
