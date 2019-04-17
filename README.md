# dotfiles

### nvimの設定

* rbenv, pyenv, homebrewをインストールする

* neovimをインストール

```
$ brew install neovim
$ export XDG_CONFIG_HOME=~/.config > ~/.bash_profile
$ source ~/.bash_profile
```

* deinをインストール

```
$ mkdir ~/.vim
$ mkdir ~/.vim/dein
$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
$ sh installer.sh ~/.vim/dein
```

* nvim配下を~/.config/配下に設置する

```
mkdir -p ~/.config/nvim/
vim ~/.config/nvim/init.vim
```

* 以下のコマンドを実行

```
$ sudo pip3 install neovim
$ brew install ctags
```

### フォントの設定

1. Rictyをインストール

```
$ brew tap sanemat/font
$ brew install --vim-powerline ricty
$ cp -f /usr/local/Cellar/ricty/3.2.3/share/fonts/Ricty*.ttf ~/Library/Fonts/ 
$ fc-cache -vf
$ exec $SHELL -l
```

2. iTermのフォントを設定

### tigインストール

```
$ brew install tig
```

### fzfのインストール

```
$ brew install fzf
```
