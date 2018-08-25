# some more ls aliases                                                                                                                                         
alias ll='ls -l'                                                                                                       
alias la='ls -A'
alias l='ls -CF'   

alias notes=note
note(){
    NOTES="${HOME}/Documents/work/notes";
    if [[ -d "${NOTES}" ]]; then
        cd ${NOTES}; vim
    else
        mkdir ${NOTES};
        cd ${NOTES}; vim
    fi
}

alias repos=repo
repo(){
    REPO="${HOME}/Documents/work/repos";
    if [[ -d "${REPO}" ]]; then
        cd ${REPO}; 
    else
        mkdir ${REPO};
        cd ${REPO}
    fi
}
