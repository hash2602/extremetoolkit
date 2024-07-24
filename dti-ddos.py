import sys,os
from colorama import Fore

print(Fore.CYAN+"""               

▓█████▄ ▄▄▄█████▓ ██▓   ▓█████▄ ▓█████▄  ▒█████    ██████    ▄▄▄█████▓ ▒█████   ▒█████   ██▓    
▒██▀ ██▌▓  ██▒ ▓▒▓██▒   ▒██▀ ██▌▒██▀ ██▌▒██▒  ██▒▒██    ▒    ▓  ██▒ ▓▒▒██▒  ██▒▒██▒  ██▒▓██▒    
░██   █▌▒ ▓██░ ▒░▒██▒   ░██   █▌░██   █▌▒██░  ██▒░ ▓██▄      ▒ ▓██░ ▒░▒██░  ██▒▒██░  ██▒▒██░    
░▓█▄   ▌░ ▓██▓ ░ ░██░   ░▓█▄   ▌░▓█▄   ▌▒██   ██░  ▒   ██▒   ░ ▓██▓ ░ ▒██   ██░▒██   ██░▒██░    
░▒████▓   ▒██▒ ░ ░██░   ░▒████▓ ░▒████▓ ░ ████▓▒░▒██████▒▒     ▒██▒ ░ ░ ████▓▒░░ ████▓▒░░██████▒
 ▒▒▓  ▒   ▒ ░░   ░▓      ▒▒▓  ▒  ▒▒▓  ▒ ░ ▒░▒░▒░ ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▒░▒░▒░ ░ ▒░▒░▒░ ░ ▒░▓  ░
 ░ ▒  ▒     ░     ▒ ░    ░ ▒  ▒  ░ ▒  ▒   ░ ▒ ▒░ ░ ░▒  ░ ░       ░      ░ ▒ ▒░   ░ ▒ ▒░ ░ ░ ▒  ░
 ░ ░  ░   ░       ▒ ░    ░ ░  ░  ░ ░  ░ ░ ░ ░ ▒  ░  ░  ░       ░      ░ ░ ░ ▒  ░ ░ ░ ▒    ░ ░   
   ░              ░        ░       ░        ░ ░        ░                  ░ ░      ░ ░      ░  ░
 ░                       ░       ░                                                          
                                                                        By dreamtech.dev

""")


def ana_menu():
    print(Fore.GREEN+"[✨]-1.DDOS Toolu Başlat")
    print(Fore.LIGHTBLUE_EX+"[✨]-2.Bilgilendirme")
    print(Fore.MAGENTA+"[✨]-3.Çıkış")

def komutu_isle(command):
    if command == "1":
      os.system('"cmd /k python dti-domains/ddos.py"' if os.name == "nt" else 'python dti-domains/ddos.py')
    elif command == '2':
      os.system('cmd /k "python info.py"' if os.name == 'nt' else 'python info.py')

      ana_menu()

    else:
       print(Fore.RED+"[!!!] Geçersiz seçenek, lütfen tekrar deneyin!")

while True:
    ana_menu()
    print(" ")
    command = input(Fore.BLACK+'>>>')

    if command.lower() == '3':
        break

    komutu_isle(command)