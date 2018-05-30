REPO_PATH="${HOME}/Documents/dotfiles/"

mv ${HOME}/.bashrc ${HOME}/bashrc.bkp-$(date '+%Y-%m-%d_%H-%M-%S')
mv ${HOME}/.vimrc ${HOME}/vimrc.bkp-$(date '+%Y-%m-%d_%H-%M-%S')
mv ${HOME}/.tmux.conf ${HOME}/tmux.conf.bkp-$(date '+%Y-%m-%d_%H-%M-%S')

ln -s ${REPO_PATH}/.bashrc ${HOME}/
ln -s ${REPO_PATH}/.vimrc ${HOME}/
ln -s ${REPO_PATH}/.work.alias ${HOME}/
ln -s ${REPO_PATH}/.personal.alias ${HOME}/
ln -s ${REPO_PATH}/.tmux.conf ${HOME}/

