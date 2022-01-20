# Dotfiles

/ /\ / /\/.

#### install FiraCode
```
brew tap homebrew/cask-fonts
brew cask install font-fira-code
```

#### install Nvim:
After installing nvim, symlink its default config.
```
ln -s -f ~/dotfiles/nvim ~/.config/nvim
```

#### Install vim-plug


#### Install oh-my-zsh

```
curl -Lo install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh
```

#### Symlink .zshrc to zshrc in this dir:

```
ln -s ~/dotfiles/.zshrc ~/.zshrc
```
#### install oh-my-Tmux Config:

```
$ cd
$ git clone https://github.com/gpakosz/.tmux.git
$ ln -s -f .tmux/.tmux.conf
```
#### Symlink oh-my-tmux config
```
$ ln -s ~/dotfiles/.tmux.conf.local ~/.tmux.conf.local
$ tmux source-file ~/.tmux.conf.local
```
