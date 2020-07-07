# Dotfiles

This repository is home to my dotfiles. Originally forked from [Rosco Kalis's dotfiles](https://github.com/rkalis/dotfiles), my dotfiles have deviated a fair bit and removed a good chunk of configuration for macOS, Karabiner, and Hammerspoon.

For more information about dotfiles, see the following blog posts from original author of this repository, Rosco Kalis:
* [Dotfiles: automating macOS system configuration](https://kalis.me/dotfiles-automating-macos-system-configuration/)
* [Increasing development productivity with repository management](https://kalis.me/increasing-development-productivity-repository-management/)
* [Set up a Hyper Key with Hammerspoon on macOS](https://kalis.me/setup-hyper-key-hammerspoon-macos/)

## Usage
1. Restore your safely backed up ssh keys to `~/.ssh/`
    1. Alternatively, generate new ssh keys, and add these to your GitHub account
2. Install Homebrew and git

  ```bash
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install git
  ```
3. Clone this repository

  ```
  git clone git@github.com:jonhoman/dotfiles-redux.git
  ```
4. Run the `bootstrap.sh` script
    1. Alternatively, only run the `setup.sh` scripts in specific subfolders if you don't need everything

## Customisation
I strongly encourage you to play around with the configurations, and add or remove features.
If you would like to use these dotfiles for yourself, I'd recommend changing at least the following:

#### Git
* The .gitconfig file includes my [user] config, replace these with your own user name and email

####  Packages
This folder is a collection of the programs and utilities I use frequently. These lists can easily be amended to your liking.

#### Repos
This folder is a collection of my own repos, some of which are even private. The existing lists can easily be edited or replaced by custom lists.

## Contents

### Root (/)
* bootstrap.sh - Calls all setup.sh scripts

### Ack (ack/)
* setup.sh - Symlinks the ackrc file
* .ackrc - configuration for Ack

### Fish (fish/)
* setup.sh - Symlinks all fish files to their corresponding location in `~/.config/fish/`
* config.fish - Global fish configuration
* fish_variables - Sets configuration values for colors, etc
* completions/
  * gcloud.fish - Completions for `gcloud` command
  * gsutil.fish - Completions for `gsutil` command
  * kubectl.fish - Completions for `kubectl` command
* functions/
  * \__bass.py - Enable Bash utilities in Fish shell
  * bass.fish - Enable Bash utilities in Fish shell
  * fish_prompt.fish - Customized Fish prompt stolen from somewhere
  * gcloud_sdk_argcomplete.fish - More `gcloud` completion stuff
  * nvm.fish - Gets NVM working in Fish shell
  * sess.fish - Gets `sess` command working in Fish shell

### Git (git/)
* setup.sh - Symlinks all git files to `~/`
several compiled files
* .gitconfig - Sets several global Git variables

### Packages (packages/)
* setup.sh - Installs the contents the Brewfile

### Repositories (repos/)
* setup.sh - Clones the repositories in the .list files at the corresponding
locations

### Helper Scripts (scripts/)
* functions.sh - Contains helper functions for symlinking files and printing
  progress messages

### Session Sauce (sess/)
* setup.sh - Symlinks the sess.sh file
* sess.sh - Bash script for quick and easy tmux session management
* Author: Chris Penner, https://github.com/ChrisPenner/session-sauce

### Tmux (tmux/)
* setup.sh - Symlinks the tmux configuration
* .tmux.conf - Simple tmux configuration, mostly taken from [Brian Hogan's dotfiles](https://github.com/napcs/dotfiles)

### Vim (vim/)
* setup.sh - Symlinks all vim files to `~/`
* .vimrc - The Vim configuration I've cobbled together over the years
* autoload/
  * plug.vim - source file for vim-plug; manages Vim plugins

### Yabai (yabai/)
* setup.sh - Symlinks the two configs to `~/`
* .skhdrc - Configuration file for skhd, simple hotkey daemon
* .yabairc - Configuration file for yabai, tiling window manager
