#!/bin/bash

echo """
                                           
       @@@@@@@   @@@@@@  @@@@@@@  @@@@@@@ 
       @@!  @@@ @@!  @@@ @@!  @@@   @!!   
       @!@@!@!  @!@  !@! @!@!!@!    @!!   
       !!:      !!:  !!! !!: :!!    !!:   
       :        : :. :   :   : :    :    
       MADE BY HASH2602                                    
"""
read -p "Please enter the IP address or network range: " ip

echo ""
echo "{1} BASIC SCAN"
echo "{2} SPECIFIC PORT SCAN"
echo "{3} SCAN ALL PORTS"
echo "{4} SERVICE AND VERSION INFO"
echo "{5} OS DETECTION"
echo "{6} SYN SCAN"
echo "{7} UDP SCAN"
echo "{8} AGGRESSIVE SCAN"
echo "{9} PING SWEEP"
echo "{10} SCAN SPECIFIC HOSTS"
echo "{11} LIST OPEN PORTS"
echo "{12} SAVE OUTPUT IN NORMAL FORMAT"
echo "{13} SAVE OUTPUT IN XML FORMAT"
echo "{14} SCAN PORT RANGE"
echo "{15} TCP CONNECT SCAN"
echo "{16} FIREWALL DETECTION"
echo "{17} SCAN MULTIPLE TARGETS FROM FILE"
echo "{18} IP PROTOCOL SCAN"
echo "{19} TCP ACK SCAN"
echo "{20} FIN SCAN"
read -p "Select the scan you want to perform: " choice

case $choice in
    1)
        nmap $ip
        ;;
    2)
        read -p "Please enter the ports (e.g., 80,443): " ports
        nmap -p $ports $ip
        ;;
    3)
        nmap -p- $ip
        ;;
    4)
        nmap -sV $ip
        ;;
    5)
        nmap -O $ip
        ;;
    6)
        nmap -sS $ip
        ;;
    7)
        nmap -sU $ip
        ;;
    8)
        nmap -A $ip
        ;;
    9)
        nmap -sn $ip
        ;;
    10)
        read -p "Please enter the host names: " hosts
        nmap -p 22 --open $hosts
        ;;
    11)
        nmap --open $ip
        ;;
    12)
        read -p "Please enter the output file name: " output
        nmap -oN $output $ip
        ;;
    13)
        read -p "Please enter the output file name: " output
        nmap -oX $output $ip
        ;;
    14)
        read -p "Please enter the port range (e.g., 1-65535): " port_range
        nmap -p $port_range $ip
        ;;
    15)
        nmap -sT $ip
        ;;
    16)
        nmap -PN $ip
        ;;
    17)
        read -p "Please enter the file name containing targets: " target_file
        nmap -iL $target_file
        ;;
    18)
        nmap -sO $ip
        ;;
    19)
        nmap -sA $ip
        ;;
    20)
        nmap -sF $ip
        ;;
    *)
        echo "Invalid choice!"
        ;;
esac
