dotfiles
========

collection of my dotfiles

Steps to clone the configurations
```
cd
git clone https://github.ocm/arundhaj/dotfiles.git dotfiles
git config --global user.name "arundhaj" # self instruction, not for others
git config --global user.email "arundhaj@gmail.com" # self instruction, not for
others
cd dotfiles
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim
git submodule init
git submodule update
```
