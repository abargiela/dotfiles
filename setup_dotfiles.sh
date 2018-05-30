#!/bin/bash
REPO_PATH="${HOME}/Documents/dotfiles/"

mv ${HOME}/.bashrc      ${HOME}/bashrc.bkp-$(date '+%Y-%m-%d_%H-%M-%S')
mv ${HOME}/.vimrc       ${HOME}/vimrc.bkp-$(date '+%Y-%m-%d_%H-%M-%S')
mv ${HOME}/.tmux.conf   ${HOME}/tmux.conf.bkp-$(date '+%Y-%m-%d_%H-%M-%S')
mv ${HOME}/.fluxbox     ${HOME}/.fluxbox-$(date '+%Y-%m-%d_%H-%M-%S')
mv ${HOME}/.i3          ${HOME}/.i3-$(date '+%Y-%m-%d_%H-%M-%S')

ln -s ${REPO_PATH}/.bashrc          ${HOME}/
ln -s ${REPO_PATH}/.vimrc           ${HOME}/
ln -s ${REPO_PATH}/.personal.alias  ${HOME}/
ln -s ${REPO_PATH}/.tmux.conf       ${HOME}/
ln -s ${REPO_PATH}/.fluxbox         ${HOME}/ 
ln -s ${REPO_PATH}/.i3/             ${HOME}/
