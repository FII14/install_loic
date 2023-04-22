#!/bin/bash
#--------------------------------
# ------- install loic ----------
# ------- pembuat: fii14 --------
#--------------------------------

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
    echo "LOIC berhasil diinstal."
    exit 0
    
  elif [[ "${nanya}" == "tidak" ]]; then
    exit 0
  
  else
    echo "Masukkan salah."
    continue
  fi
  
done
