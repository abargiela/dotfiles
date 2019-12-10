#!/bin/bash
REPO_PATH="${HOME}/Documents/dotfiles/"

FILES=".bashrc .vimrc .tmux.conf .fluxbox .i3 .Xresources .zshrc"
NEOVIM_CONFIG_FILE="init.vim"
VSCODE_CONFIG_FILE="settings.json"

for i in ${FILES}; do
    if [[ -h ${HOME}/${i} ]];then
        unlink ${HOME}/${i}
    fi 

    if [[ -f ${HOME}/${i} ]]; then
        mv  ${HOME}/${i} ${HOME}/${i}.bkp-$(date '+%Y-%m-%d_%H-%M-%S')
    fi

    ln -s ${REPO_PATH}/${i} ${HOME}/
done

#NeoVim config
ln -s ${REPO_PATH}/${NEOVIM_CONFIG_FILE} ~/.config/nvim/
# VSCode config
ln -s ${REPO_PATH}/${VSCODE_CONFIG_FILE} ~/Library/Application\ \Support/Code/User/