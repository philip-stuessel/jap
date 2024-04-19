#!/bin/zsh
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

source ~/.zshrc
if command -v jq &> /dev/null; then
    echo ""
else
    brew install jq
fi
echo "install JAP 🍜"
echo ${BLUE}">>>>>>>"${NC}
echo $(mkdir -p ~/jap && curl -o ~/jap/jap.zsh https://raw.githubusercontent.com/philipstuessel/jap/main/jap.zsh)
echo ${MAGENTA}"install: jap.zsh"${NC}
echo "was installed in: \n"${MAGENTA}$(pwd)${NC}
echo "\nsource /Users/$(users)/jap/jap.zsh" >> ~/.zshrc ""
echo ${GREEN}"add in ~/.zshrc"${NC}
echo $(mkdir -p ~/jap/tpl/) ${MAGENTA}"create: tpl folder"${NC}
echo $(mkdir -p ~/jap/plugins/) ${MAGENTA}"create: plugins folder"${NC}
echo $(mkdir -p ~/jap/plugins/packages/) ${MAGENTA}"create: packages folder"${NC}
echo "" > /Users/$USER/jap/plugins/source.sh
echo "command jap"
source ~/.zshrc
echo ${GREEN}"Done"${NC}