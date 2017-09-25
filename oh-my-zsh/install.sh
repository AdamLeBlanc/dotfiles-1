# Taken from https://github.com/rafaeleyng/dotfiles/blob/master/oh-my-zsh/install.sh

export ZSH=~/.oh-my-zsh

if [! -d $ZSH]; then
	git clone https://github.com/robbyrussell/oh-my-zsh.git $ZSH
fi
