#!/bin/zsh

# alias
alias s="source ~/.zshrc"
alias q="killall Terminal"
alias t="touch"
alias apr="apachectl restart"
alias aps="apachectl stop"
alias o="open ."
alias nf="mkdir"

#color
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
BOLD='\033[1m'
UNDERLINE='\033[4m'
NC='\033[0m' # No Color

VERSION="v0.0.1"

jap() {
    if [[ "$1" == "-v" || "$1" == "" ]]; then
         echo "JAP 🍜"
         echo ${VERSION}
    fi
    if [[ "$1" == "help" ]]; then
        echo "Usage: jap [options]"
        echo "Options:"
        echo " help     List the commamds"
        echo " gi       Create the .gitignore file"
        echo " update   Update JAP"
        echo ""
        echo "---- workflow (alias)"
        echo " alias    commands"
        echo ""
        echo " s        source ~/.zshrc"
        echo " q        killall Terminal"
        echo " t        touch"
        echo " apr      apachectl restart"
        echo " aps      apachectl stop"
        echo " o        open ."
        echo " nf       mkdir"
    fi
    if [[ "$1" == "update" ]]; then
           source /Users/$(users)/jap/update.sh
    fi
    if [[ "$1" == "gi" ]]; then
        echo ".DS_Store \n **/.DS_Store" > .gitignore
        echo "Create ${GREEN}".gitignore"${NC}"
        echo $(pwd)"/"${GREEN}".gitignore"${NC}
    fi
}