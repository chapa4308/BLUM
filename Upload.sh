#!/bin/bash
HEIGHT=10
WIDTH=40
sudo apt-get install git
sudo git clone https://github.com/screetsec/TheFatRat.git
sudo git clone https://github.com/arismelachroinos/lscript.git
sudo git clone https://github.com/chapa4308/BLUM.git
sudo apt update && sudo apt upgrade && sudo apt-get install mdk4 && sudo apt-get install python3
dialog --title "Download" --gauge "Installing BLUM,wait..." $HEIGHT $WIDTH 0 < <(
    for i in {1..10}; do
        echo $((i * 10))
        sleep 1
    done
) 

dialog --msgbox "BLUM Installed!" 10 40

clear

chmod +x BLUM.sh
bash BLUM.sh