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

* Zinitのインストール

[zdharma/zinit: Flexible and fast Zsh plugin manager with clean fpath, reports, completion management, Turbo, annexes, services, packages\.](https://github.com/zdharma/zinit)

* シンボリックリンク

```
$ ln -s ~/dotfiles/.zshrc ~/
$ ln -s ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
```

* 以下のコマンドを実行

```
$ sudo pip3 install neovim
$ brew install ctags
$ gem install solargraph
```

zshrcに↓を追加する

```zshrc
alias ctags='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
```

```
$ ctags -R .
```

* nvimで以下を実行
```
:CocInstall coc-solargraph
:CocInstall coc-html
:CocInstall coc-tsserver 
```

### フォント

HackGenNerd Console

### tigインストール

```
$ brew install tig
```

### fzfのインストール

```
$ brew install fzf
```
