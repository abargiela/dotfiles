#!/bin/bash
REPO_PATH="${HOME}/Documents/dotfiles/"

# Base configs
FILES=".bashrc .vimrc .tmux.conf .fluxbox .i3 .Xresources .zshrc"
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
NEOVIM_CONFIG_FILE="init.vim"
if [[ -h ${REPO_PATH}/${NEOVIM_CONFIG_FILE} ]];then
    unlink ${REPO_PATH}/${NEOVIM_CONFIG_FILE}
fi 
if [[ -f ${REPO_PATH}/${NEOVIM_CONFIG_FILE} ]]; then
    mv  ${REPO_PATH}/${NEOVIM_CONFIG_FILE} ${REPO_PATH}/${NEOVIM_CONFIG_FILE}.bkp-$(date '+%Y-%m-%d_%H-%M-%S')
    ln -s ${REPO_PATH}/${NEOVIM_CONFIG_FILE} ~/.config/nvim/
fi

# VSCode config
VSCODE_CONFIG_FILE="settings.json"
if [[ -h ${REPO_PATH}/${VSCODE_CONFIG_FILE} ]];then
    unlink ${REPO_PATH}/${VSCODE_CONFIG_FILE}
fi
if [[ -f ${REPO_PATH}/${VSCODE_CONFIG_FILE} ]]; then
    mv  ${REPO_PATH}/${VSCODE_CONFIG_FILE} ${REPO_PATH}/${VSCODE_CONFIG_FILE}.bkp-$(date '+%Y-%m-%d_%H-%M-%S')
    ln -s ${REPO_PATH}/${VSCODE_CONFIG_FILE} ~/.config/nvim/
fi
