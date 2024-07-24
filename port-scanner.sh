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