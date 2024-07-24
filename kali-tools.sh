#!/bin/bash

echo"""
   __ _____   __   ____   __________  ____  __   ____
  / //_/ _ | / /  /  _/__/_  __/ __ \/ __ \/ /  / __/
 / ,< / __ |/ /___/ //___// / / /_/ / /_/ / /___\ \  
/_/|_/_/ |_/____/___/    /_/  \____/\____/____/___/  
                                                     
"""
echo "==========================="
echo "      BRUTE FORCE TOOLS"
echo "==========================="
echo "{1} John the Ripper"
echo "{2} Hydra"
echo "{3} HashCat"
echo "{4} Medusa"
echo "{5} THC-Hydra"

echo ""
echo "==========================="
echo "       NETWORK TOOLS"
echo "==========================="
echo "{6} Nmap"
echo "{7} Rustscan"
echo "{8} NetCat"
echo "{9} Wireshark"
echo "{10} Ettercap"
echo "{11} Nikto"

echo ""
echo "==========================="
echo "      WIRELESS TOOLS"
echo "==========================="
echo "{12} Aircrack-ng"
echo "{13} Kismet"
echo "{14} Wifite"
echo "{15} Reaver"

echo ""
echo "==========================="
echo "    EXPLOITATION TOOLS"
echo "==========================="
echo "{16} Metasploit Framework"
echo "{17} Armitage"
echo "{18} Sqlmap"
echo "{19} BeEF"

echo ""
echo "==========================="
echo "    INFORMATION GATHERING"
echo "==========================="
echo "{20} Maltego"
echo "{21} theHarvester"
echo "{22} Recon-ng"
echo "{23} Dmitry"
echo "{24} OSRFramework"

echo ""
echo "==========================="
echo "       PASSWORD TOOLS"
echo "==========================="
echo "{25} Hashcat"
echo "{26} Hydra"
echo "{27} John the Ripper"
echo "{28} CeWL"
echo "{29} Crunch"

echo ""
echo "==========================="
echo "    WEB APPLICATION TOOLS"
echo "==========================="
echo "{30} Burp Suite"
echo "{31} OWASP ZAP"
echo "{32} Nikto"
echo "{33} Wpscan"
echo "{34} Arachni"

echo ""
echo "==========================="
echo "      FORENSICS TOOLS"
echo "==========================="
echo "{35} Autopsy"
echo "{36} Sleuth Kit"
echo "{37} Binwalk"
echo "{38} Foremost"
echo "{39} Volatility"

echo ""
echo "==========================="
echo "    SOCIAL ENGINEERING"
echo "==========================="
echo "{40} Social Engineering Toolkit (SET)"
echo "{41} King Phisher"
echo "{42} HiddenEye"
echo "{43} Gophish"

echo ""
echo "==========================="
echo "      MAINTAINING ACCESS"
echo "==========================="
echo "{44} Weevely"
echo "{45} Powersploit"
echo "{46} Pupy"
echo "{47} Nishang"

echo ""
echo "==========================="
echo "     REPORTING TOOLS"
echo "==========================="
echo "{48} MagicTree"
echo "{49} Dradis"
echo "{50} Faraday"
echo "{51} Serpico"

if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    show_help
    exit 0
fi

echo ""
read -p "Lütfen yüklemek istediğiniz aracı seçin: " choice

case $choice in
  1) sudo apt-get install -y john ;;
  2) sudo apt-get install -y hydra ;;
  3) sudo apt-get install -y hashcat ;;
  4) sudo apt-get install -y medusa ;;
  5) sudo apt-get install -y thc-hydra ;;
  6) sudo apt-get install -y nmap ;;
  7) sudo apt-get install -y rustscan ;;
  8) sudo apt-get install -y netcat ;;
  9) sudo apt-get install -y wireshark ;;
  10) sudo apt-get install -y ettercap ;;
  11) sudo apt-get install -y nikto ;;
  12) sudo apt-get install -y aircrack-ng ;;
  13) sudo apt-get install -y kismet ;;
  14) sudo apt-get install -y wifite ;;
  15) sudo apt-get install -y reaver ;;
  16) sudo apt-get install -y metasploit-framework ;;
  17) sudo apt-get install -y armitage ;;
  18) sudo apt-get install -y sqlmap ;;
  19) sudo apt-get install -y beef ;;
  20) sudo apt-get install -y maltego ;;
  21) sudo apt-get install -y theharvester ;;
  22) sudo apt-get install -y recon-ng ;;
  23) sudo apt-get install -y dmitry ;;
  24) sudo apt-get install -y osrframework ;;
  25) sudo apt-get install -y hashcat ;;
  26) sudo apt-get install -y hydra ;;
  27) sudo apt-get install -y john ;;
  28) sudo apt-get install -y cewl ;;
  29) sudo apt-get install -y crunch ;;
  30) sudo apt-get install -y burpsuite ;;
  31) sudo apt-get install -y owasp-zap ;;
  32) sudo apt-get install -y nikto ;;
  33) sudo apt-get install -y wpscan ;;
  34) sudo apt-get install -y arachni ;;
  35) sudo apt-get install -y autopsy ;;
  36) sudo apt-get install -y sleuthkit ;;
  37) sudo apt-get install -y binwalk ;;
  38) sudo apt-get install -y foremost ;;
  39) sudo apt-get install -y volatility ;;
  40) sudo apt-get install -y set ;;
  41) sudo apt-get install -y king-phisher ;;
  42) sudo apt-get install -y hiddeneye ;;
  43) sudo apt-get install -y gophish ;;
  44) sudo apt-get install -y weevely ;;
  45) sudo apt-get install -y powersploit ;;
  46) sudo apt-get install -y pupy ;;
  47) sudo apt-get install -y nishang ;;
  48) sudo apt-get install -y magictree ;;
  49) sudo apt-get install -y dradis ;;
  50) sudo apt-get install -y faraday ;;
  51) sudo apt-get install -y serpico ;;
  *) echo "Geçersiz seçim!" ;;
esac