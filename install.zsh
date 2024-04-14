#!/bin/zsh
source ~/.zshrc
echo "install JAP 🍜"
echo ${BLUE}">>>>>>>"${NC}
fetch ~/jap ~/jap/jap.sh https://raw.githubusercontent.com/philipstuessel/jap/main/jap.zsh
echo "was installed in: \n"${MAGENTA}$(pwd)${NC}
echo "\nsource /Users/$(users)/jap/jap.sh" >> ~/.zshrc ""
echo ${GREEN}"add in ~/.zshrc"${NC}
echo $(mkdir -p ~/jap/tpl/) ${MAGENTA}"create: tpl folder"${NC}
echo $(mkdir -p ~/jap/plugins/) ${MAGENTA}"create: plugins folder"${NC}
echo $(mkdir -p ~/jap/plugins/packages/) ${MAGENTA}"create: packages folder"${NC}
echo "" > /Users/$USER/jap/plugins/source.sh
echo "command jap"
source ~/.zshrc
echo ${GREEN}"Done"${NC}