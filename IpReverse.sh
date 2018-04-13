#!/bin/bash
#author: Pako Salas @neodash
#obtener el servidor y posibles ip's
#Prueba con curl para obtener el servidor de una web y sus reverse ip
#06 / Abril / 2018
clear;

echo '
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -                   
 __                                                     
|__|.-----..----.-----.--.--.-----.----.-----.-----.
|  ||  _  ||   _|  -__|  |  |  -__|   _|__ --|  -__|
|__||   __||__| |_____|\___/|_____|__| |_____|_____|
    |__|                                                
                      __               __               
.-----.-----.-----.--|  |.---.-.-----.|  |--.           
|     |  -__|  _  |  _  ||  _  |__ --||     |           
|__|__|_____|_____|_____||___._|_____||__|__|           
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
'
echo "             Script de IpReverse "
echo "          Por Pako Salas @neodash - tpx Security "
echo "      "
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  "

echo '\n'  


 echo "[+] Ingresa la URL (con http o https) , y presiona enter"
            read url
             echo "[+]-------------------------------------------------------------------[+]"
            echo '\n'
            efectiva=$(curl $url -s -L -I -o /dev/null -w '%{url_effective}')
            echo '\n'
            echo "[+] Esta bajo un servidor:"
            echo '\n'
            echo "[!] " | curl -sI $efectiva | sed -n 's/Server: *//p'
            echo '\n'
            echo "[+] Posibles ip:"
            echo '\n'
            echo "[!] " | nmap --script dns-brute -sn $url
            echo '\n'
            echo "[+]-------------------------------------------------------------------[+]"
            echo '\n'
            echo '\n'    
            echo ""
            echo " -- IpReverse v 1.0 --"
            echo " Un script para obtener bajo que servidor esta la web y obtener sus ip reverse"
            echo " --- By @neodash --  "
            echo '\n'  
