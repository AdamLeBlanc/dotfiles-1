# inspired by https://github.com/rafaeleyng/dotfiles/blob/master/oh-my-zsh/index.zsh
export ZSH=~/.oh-my-zsh

ZSH_THEME="robbyrussell"
DEFAULT_USER=$(whoami)

plugins=(docker git yarn z)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
