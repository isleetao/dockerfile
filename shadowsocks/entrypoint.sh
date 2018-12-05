#!/bin/bash

PORT=${PORT:-"10086"}
PASSWORD=${PASSWORD:-"123456"}
METHOD=${METHOD:-"rc4-md5"}
CONFIG=${CONFIG:-""}

while getopts "c:p:k:m:" OPT; do
    case $OPT in
        c)
            CONFIG=$OPTARG;;
        p)
            PORT=$OPTARG;;
        k)
            PASSWORD=$OPTARG;;
        m)
            METHOD=$OPTARG;;
    esac
done

if [ "$CONFIG" ]; then
    echo -e "\033[32m[Config Path]:$CONFIG\033[0m";
    ssserver -c $CONFIG
else
    echo -e "\033[32m[Port]:${PORT}, [Password]:${PASSWORD}, [Method]:${METHOD}\033[0m"
    ssserver -p $PORT -k ${PASSWORD} -m ${METHOD}
fi