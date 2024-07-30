#!/bin/bash

echo """
                                           
       @@@@@@@   @@@@@@  @@@@@@@  @@@@@@@ 
       @@!  @@@ @@!  @@@ @@!  @@@   @!!   
       @!@@!@!  @!@  !@! @!@!!@!    @!!   
       !!:      !!:  !!! !!: :!!    !!:   
       :        : :. :   :   : :    :    
                                   
"""
read -p "Lütfen IP adresini giriniz: " ip

echo ""
echo "{1} BASIT SCAN"
echo "{2} SERVIS VE VERSIYON BILGISI"
echo "{3} OS TESPITI"
echo "{4} BELIRLI PORT TARAYICI"
read -p "Yapmak istediğiniz taramayı seçin: " choice

case $choice in
    1)
        nmap $ip
        ;;
    2)
        nmap -sV $ip
        ;;
    3)
        nmap -O $ip
        ;;
    4)
        read -p "Tarayacağınız port aralığını girin (örn: 20-80): " ports
        nmap -p $ports $ip
        ;;
    *)
        echo "Geçersiz seçenek. Lütfen 1, 2, 3 veya 4 giriniz."
        ;;
esac
