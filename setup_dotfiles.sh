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

# NeoVim config
NEOVIM_CONFIG_FILE="init.vim"
NEOVIM_PATH="${HOME}/.config/nvim/"
if [[ -h ${NEOVIM_PATH}/${NEOVIM_CONFIG_FILE} ]];then
    unlink ${NEOVIM_PATH}/${NEOVIM_CONFIG_FILE}
fi
if [[ -f ${NEOVIM_PATH}/${NEOVIM_CONFIG_FILE} ]]; then
    mv  ${NEOVIM_PATH}/${NEOVIM_CONFIG_FILE} ${NEOVIM_PATH}/${NEOVIM_CONFIG_FILE}.bkp-$(date '+%Y-%m-%d_%H-%M-%S')
    ln -s ${REPO_PATH}/${NEOVIM_CONFIG_FILE} ${NEOVIM_PATH}
fi

# Coc config
COC_EXTENSIONS_FILE="package.json"
COC_PATH="${HOME}/.config/coc/extensions/"
if [[ -h ${COC_PATH}/${COC_EXTENSIONS_FILE} ]];then
    unlink ${COC_PATH}/${COC_EXTENSIONS_FILE}
fi
if [[ -f ${COC_PATH}/${COC_EXTENSIONS_FILE} ]]; then
    mv  ${COC_PATH}/${COC_EXTENSIONS_FILE} ${COC_PATH}/${COC_EXTENSIONS_FILE}.bkp-$(date '+%Y-%m-%d_%H-%M-%S')
    ln -s ${REPO_PATH}/${COC_EXTENSIONS_FILE} ${COC_PATH}
fi

# VSCode config
VSCODE_CONFIG_FILE="settings.json"
VSCODE_PATH="$HOME/Library/Application Support/Code/User"
if [[ -h ${VSCODE_PATH}/${VSCODE_CONFIG_FILE} ]];then
    unlink ${VSCODE_PATH}/${VSCODE_CONFIG_FILE}
fi
if [[ -f ${VSCODE_PATH}/${VSCODE_CONFIG_FILE} ]]; then
    mv  ${VSCODE_PATH}/${VSCODE_CONFIG_FILE} ${VSCODE_PATH}/${VSCODE_CONFIG_FILE}.bkp-$(date '+%Y-%m-%d_%H-%M-%S')
    ln -s ${REPO_PATH}/${VSCODE_CONFIG_FILE} ${VSCODE_PATH}
fi

# iTerm config
ITERM_STARTUP_CONFIG_FILE="check-iterm2-startup.sh"
ITERM_STARTUP_PATH="$HOME/Documents/"
if [[ -h ${ITERM_STARTUP_PATH}/${ITERM_STARTUP_CONFIG_FILE} ]];then
    unlink ${ITERM_STARTUP_PATH}/${ITERM_STARTUP_CONFIG_FILE}
fi
if [[ -f ${ITERM_STARTUP_PATH}/${ITERM_STARTUP_CONFIG_FILE} ]]; then
    mv  ${ITERM_STARTUP_PATH}/${ITERM_STARTUP_CONFIG_FILE} ${ITERM_STARTUP_PATH}/${ITERM_STARTUP_CONFIG_FILE}.bkp-$(date '+%Y-%m-%d_%H-%M-%S')
    ln -s ${REPO_PATH}/${ITERM_STARTUP_CONFIG_FILE} ${ITERM_STARTUP_PATH}
fi
