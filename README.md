dotfiles
========

collection of my dotfiles

Steps to clone the configurations
```shell
cd
git clone https://github.com/arundhaj/dotfiles.git dotfiles
git config --global user.name "arundhaj" # self instruction, not for others
git config --global user.email "arundhaj@gmail.com" # self instruction, not for others
cd dotfiles
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim
git submodule init
git submodule update
```

For windows the symbolic link is done differently
```zsh
cd D:\ProgramFiles\Vim
mklink _vimrc D:\dotfiles\vimrc
mklink /D vimfiles D:\dotfiles\vim
```

To add submodules
```bash
cd ~/dotfiles
git submodule add https://github.com/kien/ctrlp.vim.git vim/bundle/ctrlp
git add .
git commit -m 'added ctrlp plugin as submodule
```

To update submodule
```shell
cd ~/dotfiles/vim/bundle/ctrlp
git pull origin master
```
