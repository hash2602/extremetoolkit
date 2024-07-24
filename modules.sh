#!/bin/bash

echo '
________   ________  __      _________  .____    ________      _____  ________   
\______ \  \_____  \/  \    /  \      \ |    |   \_____  \    /  _  \ \______ \  
 |    |  \  /   |   \   \/\/   /   |   \|    |    /   |   \  /  /_\  \ |    |  \ 
 |        \/    |    \        /    |    \    |___/    |    \/    |    \|    `   \
/_______  /\_______  /\__/\  /\____|__  /_______ \_______  /\____|__  /_______  /
        \/         \/      \/         \/        \/       \/         \/        \/ 
'        
echo "==========================="
echo "          MODULES          "
echo "==========================="
echo "{1} PIPX(indirmeniz zorunludur)"
echo "{2} Requests"
echo "{3} Colorama"

if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    show_help
    exit 0
fi

echo ""
read -p "Lutfen yuklemek istediginiz modulu secin: " choice

case $choice in
  1) sudo apt install pipx ;;
  2) pipx install requests ;;
  3) pipx install colorama ;;

  *) echo "Geçersiz seçim!" ;;
esac