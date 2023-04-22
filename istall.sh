#!/bin/bash
# install loic

while true
do
  
  read -p "Apakah Anda mau menginstal LOIC [iya/tidak]: " nanya
  
  if [[ "${nanya}" == "iya" ]]; then
    apt-get update -y
    apt-get install zip -y
    apt-get install mono-complete -y
    cd loic
    unzip loic.zip
    chmod +x loic.exe
    cp loic.exe /usr/bin
    echo "LOIC berhasil diinstal."
    exit 0
    
  elif [[ "${nanya}" == "tidak" ]]; then
    exit 0
  
  else
    echo "Masukkan salah."
    continue
  fi
  
done
