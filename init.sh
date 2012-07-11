#/bin/bash

BACKUP_DIR="/tmp/$(date)"
mkdir "$BACKUP_DIR"

mv ~/.zshrc "$BACKUP_DIR"
ln -s dotfiles/zsh/zshrc ~/.zshrc

mv ~/.vim "$BACKUP_DIR"
ln -s dotfiles/vim ~/.vim

mv ~/.vimrc "$BACKUP_DIR"
ln -s dotfiles/vim/vimrc ~/.vimrc
