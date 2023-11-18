cbvim
=====

```
git clone git@github.com:yeouchien/cbvim.git ~/.vim

ln -s ~/.vim/vimrc ~/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim .vimrc

:BundleInstall

brew install tmux
brew install reattach-to-user-namespace

Add following lines to ~/.zshrc
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        source "$BASE16_SHELL/profile_helper.sh"

base16_gruvbox-dark-hard
```
