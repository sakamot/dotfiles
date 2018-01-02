# dotfiles

### vimの設定

1. deinをインストール

```
$ mkdir ~/.vim
$ mkdir ~/.vim/dein
$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
$ sh installer.sh ~/.vim/dein
```

2. vimを起動してコマンド実行

```
:call dein#install()
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
