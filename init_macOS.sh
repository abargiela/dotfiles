#!/bin/bash

function install_brew() {
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

function install_brew_packages() {
    DEFAULT=(
        'zsh' \
        'ansible' \
        'neovim' \
        'python3' \
        'git' \
        'tmux'
    )
    CASKS=(
        'visual-studio-code' \
        'google-chrome' \
        'iterm2' \
        'microsoft-teams' \
        'forticlient' \
        'enpass' \
        'rambox'
    )

    for brew_default in ${DEFAULT[@]}; do 
        brew install  ${brew_default}
    done
    for brew_casks in ${CASKS[@]}; do 
        brew cask install ${brew_casks}
    done
}

function install_pip_packages() {
    pip3 install virtualenv
}

function install_neovim_plug(){
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

function create_virtualenv(){
    virtualenv -p python3 ~/Documents/venv_py3
}

function dot_files_repo_download(){
    # If you're not me, comment git and use https :P 
    #git clone https://github.com/abargiela/dotfiles.git ${HOME}/Documents/dotfiles/
    git clone git@github.com:abargiela/dotfiles.git ${HOME}/Documents/dotfiles/
}

function dot_files_repo_install(){
    bash ${HOME}/Documents/dotfiles/setup_dotfiles.sh
}
function neovim_install_plugins(){
    nvim +'PlugInstall --sync' +'PlugUpdate' +qa
}
function zsh_load_config(){
    source ~/.zshrc
}


function main() {
    install_brew
    install_brew_packages
    install_pip_packages
    install_neovim_plug
    create_virtualenv
    dot_files_repo_download
    dot_files_repo_install
    neovim_install_plugins
    zsh_load_config
}



main