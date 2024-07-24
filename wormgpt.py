import requests
import sys
import time
G = '\033[1;30;40m'
Y = '\033[92m'
K = '\033[91m'
M = '\033[94m'
S = '\033[93m'
P = '\033[95m'
print("QWEXSA Aİ TOOL")

def wormgpt_api(message):
    url = "https://dev-the-dark-lord.pantheonsite.io/wp-admin/js/Apis/WormGpt.php"
    params = {"message": message}
    response = requests.get(url, params=params)
    return response.text

def print_api_response(choice, message):
    if choice == 1:
        response = wormgpt_api(message)
        print(P+"Worm GPT yanıtı:"+G, response)
        print(K+"Geçersiz seçim!")

while True:
    print("\n")
    print(S+"Yapayzeka Seçenekleri:\n")
    print(M+"1- Worm GPT")
    try:
        choice = int(input(S+"Kullanmak istediğin yapayzekayı seç"+Y))
        
        message = input(S+"Sormak istediğin soruyu gir: "+Y)
        print_api_response(choice, message)
    except ValueError:
        print(K+"Lütfen geçerli bir sayı gir!")