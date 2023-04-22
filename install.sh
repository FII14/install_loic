#!/bin/bash
#--------------------------------
# ------- install loic ----------
# ------- pembuat: fii14 --------
#--------------------------------

h="\e[1;32m"
p="\e[0m"
m="\e[1;31m"

while true
do
  
  read -p "Apakah Anda mau menginstal LOIC [iya/tidak]: " nanya
  
  if [[ "${nanya}" == "iya" ]]; then
    apt-get update -y
    apt-get install zip -y
    apt-get install mono-complete -y
    cd loic
    unzip LOIC-1.0.8-binary.zip
    chmod +x LOIC.exe
    cp LOIC.exe /usr/bin
    echo -e "${h}[+] ${p}LOIC berhasil diinstal."
    sleep 3
    echo -e "${h}[+] ${p}Untuk menjalankannya ketikkan perintah ${h}LOIC.exe${p}"
    sleep 3
    exit 0
    
  elif [[ "${nanya}" == "tidak" ]]; then
    exit 0
  
  else
    echo -e "${m}[-] ${p}Masukkan salah."
    continue
  fi
  
done
