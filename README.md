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
