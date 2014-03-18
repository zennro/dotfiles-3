#/bin/bash

git submodule init
git submodule update

#BACKUP_DIR="/tmp/$(date)"
BACKUP_DIR=$HOME"/backups"
mkdir "$BACKUP_DIR"

mv ~/.zshrc "$BACKUP_DIR"
ln -s dotfiles/zsh/zshrc ~/.zshrc

mv ~/.vim "$BACKUP_DIR"
ln -s dotfiles/vim ~/.vim

mv ~/.vimrc "$BACKUP_DIR"
ln -s dotfiles/vim/vimrc ~/.vimrc

mv ~/.tmux.conf "$BACKUP_DIR"
ln -s dotfiles/tmux/tmux.conf ~/.tmux.conf
