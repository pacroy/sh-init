#!/bin/sh

# Azure CLI
alias azset='az account set -s'
alias azls='az account list -o table'
azaks() { 
    az aks get-credentials --resource-group "${1}" --name "${2}"
}

# Kubernetes CLI
alias kc='kubectl'
alias kcls='kubectl config get-contexts'
alias kcuse='kubectl config use-context'
kcsetns() { 
    kubectl config set-context $(kubectl config current-context) --namespace "${1}"
}
kcstatus() { 
    kubectl rollout status deploy "${1}"
}
kcskiptls() {
    kubectl config set-cluster "${1}" --insecure-skip-tls-verify=true
}

# OpenShift CLI
alias ocls='oc config get-contexts'
alias ocuse='oc config use-context'

# Terraform & Terragrunt
unalias tf tg 2> /dev/null
alias tf='terraform'
alias tg='terragrunt'

# Git
alias gitl='git log --oneline --decorate'
alias gitt='git tag -n1'
alias gits='git status'
alias gitb='git branch -vv'
alias gitp='git push'
alias gitpt='git push --tags'
alias gitd='git diff'
alias gitu='git pull'
alias gitr='git remote -v'
gitscan() {
    for d in */
    do
        echo -e "[$d]"
        cd $d
        git status
        cd ..
        echo ""
    done
}
gita() {
    git add "$@"
}
gitc() { 
    git commit -m "${1}" 
}

# Update
alias update-sh-init="cat $INITDIR/install.sh | sh && source $INITDIR/init.sh"

# Standard
alias ll='ls -AlFh'
alias switch='sudo update-alternatives --config'
