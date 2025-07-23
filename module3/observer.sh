#!/bin/bash
CONFIG_FILE="observer.conf"
LOG_FILE="observer.log"


while IFS= read -r script; do
if  pgrep -f $script ; then
echo "Скрипт  $script запущен" >> $LOG_FILE
else
nohup "$(pwd)/$script" &
DATE=$(date "+%d.%m.%Y %H:%M:%S")
echo "Скрипт $script перезапущен в $DATE" >> $LOG_FILE
fi
done < $CONFIG_FILE
