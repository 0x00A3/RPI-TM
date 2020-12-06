#!/bin/sh
clear
BLUE=`tput setaf 6`
WHITE=`tput setaf 7`
reset=`tput sgr0`
cpu=cpu=$(</sys/class/thermal/thermal_zone0/temp)
GPU=`echo "GPU  => $(/opt/vc/bin/vcgencmd measure_temp | cut -d = -f2)"`
CPU=`echo "CPU  => $((cpu/1000))'C"`
VOLT=`echo "VOLT => $(vcgencmd measure_volts core | cut -d = -f2)"`
echo -e " "
echo -e "${WHITE}-----------------------------------------------------------------------------------"
echo -e "${BLUE}          This Script is showing you the CPU GPU and Volt Usage of an RPI"
echo -e "${WHITE}-----------------------------------------------------------------------------------"
echo -e "${BLUE} ______________________   _____ __________  _____  ___________ _________ _________ "
echo -e "${BLUE} \__    ___/\_   _____/  /     \\______   \/     \ \_   _____//   _____//   _____/ "
echo -e "${BLUE}   |    |    |    __)_  /  \ /  \|     ___/  \ /  \ |    __)_ \_____  \ \_____  \  "
echo -e "${BLUE}   |    |    |        \/    Y    \    |  /    Y    \|        \/        \/        \ "
echo -e "${BLUE}   |____|   /_______  /\____|__  /____|  \____|__  /_______  /_______  /_______  / "
echo -e "${BLUE}                    \/         \/                \/        \/        \/        \/  "
echo -e "${WHITE}-----------------------------------------------------------------------------------"
echo -e "${BLUE}                             [+] Made By Birdlinux [+]                                  "
echo -e "${WHITE}-----------------------------------------------------------------------------------"
echo -e "${BLUE}           Your Current Pi GPU Temperature is     >     $GPU "
echo -e "${BLUE}           Your Current Pi CPU Temperature is     >     $CPU"
echo -e "${BLUE}           Your Current Pi Volt Usage is          >     $VOLT "
echo -e "${WHITE}-----------------------------------------------------------------------------------"
echo -e " "
