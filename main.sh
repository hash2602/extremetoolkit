#!/bin/bash

echo """
 _____  _______ ___ ___ __  __ ___ _____ ___   ___  _    _  _____ __
| __\ \/ /_   _| _ \ __|  \/  | __|_   _/ _ \ / _ \| |  | |/ /_ _|_ 
| _| >  <  | | |   / _|| |\/| | _|  | || (_) | (_) | |__| ' < | |  |
|___/_/\_\ |_| |_|_\___|_|  |_|___| |_| \___/ \___/|____|_|\_\___| |
MADE BY HASH2602, DREAMTECH
"""
echo "{1} DOWNLOAD MODULES"
echo "{2} DTI-MULTI-ATTACK"
echo "{3} PORT-SCANNER" 
echo "{4} KALI-TOOLS"
echo "{5} FAST AND OTO SQLMAP"
echo "{6} WORMGPT"
read -p "Lutfen bir secenek secin: " option

case $option in
    1)
        bash modules.sh
    2)
        python3 dti-ddos.py
        ;;
    3)
        bash port-scanner.sh
        ;;
    4)
        bash kali-tools.sh
        ;;
    5)
        bash otosqlmap.sh
        ;;
    6)
        python3 wormgpt.py
    *)
        echo "Gecersiz secenek. Lutfen 1, 2,3 veya 4 giriniz."
        ;;
esac