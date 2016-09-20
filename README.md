# dotfiles

collection of my dotfiles

Steps to clone the configurations
```bash
cd
git clone https://github.com/arundhaj/dotfiles.git dotfiles
git config --global user.name "arundhaj" # self instruction, not for others
git config --global user.email "arundhaj@gmail.com" # self instruction, not for others
```

### VIM

```bash
cd dotfiles
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim
git submodule init
git submodule update

ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
```

For windows the symbolic link is done differently
```bash
cd D:\ProgramFiles\Vim
mklink _vimrc D:\dotfiles\vimrc
mklink /D vimfiles D:\dotfiles\vim
```

To add submodules
```bash
cd ~/dotfiles
git submodule add https://github.com/kien/ctrlp.vim.git vim/bundle/ctrlp
git add .
git commit -m 'added ctrlp plugin as submodule'
```

To update submodule
```bash
cd ~/dotfiles/vim/bundle/ctrlp
git pull origin master
```

### GIT

```bash
cd dotfiles
ln -s ~/dotfiles/gitignore ~/.gitignore
```
