# inspired by https://github.com/rafaeleyng/dotfiles/blob/master/oh-my-zsh/index.zsh
export ZSH=~/.oh-my-zsh

#ZSH_THEME="agnoster"
# Download here https://github.com/caiogondim/bullet-train.zsh/blob/master/bullet-train.zsh-theme
ZSH_THEME="bullet-train"
DEFAULT_USER=$(whoami)

plugins=(brew chucknorris docker encode64 git git-extras node yarn sudo)

source $ZSH/oh-my-zsh.sh
#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# only show nvm if there is a package.json in the current directory
prompt_nvm(){
    local nvm_prompt
    if [ -f package.json ]; then
        if type nvm >/dev/null 2>&1; then
            nvm_prompt=$(nvm current 2>/dev/null)
            [[ "${nvm_prompt}x" == "x" ]] && return
        elif type node >/dev/null 2>&1; then
            nvm_prompt="$(node --version)"
        else
            return
        fi
        nvm_prompt=${nvm_prompt}
        prompt_segment $BULLETTRAIN_NVM_BG $BULLETTRAIN_NVM_FG $BULLETTRAIN_NVM_PREFIX$nvm_prompt
    else
        return
    fi
}

BULLETTRAIN_PROMPT_ORDER=(
    dir
    nvm
    git
)
