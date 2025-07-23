#!/bin/bash
filename=$(basename "$0")
echo $filename
if [[ $filename == "template_task.sh" ]]; then
echo "я бригадир, сам не работаю"
exit 1
fi
name=$(basename "$0" .sh)
log_file="report_${name}.log"
DATE_START="$(date '+%d.%m.%Y %H:%M:%S')"
echo "[$$] $DATE_START Скрипт запущен" >> $log_file
min=30
max=1800
random_number=$((RANDOM % (max - min + 1) + min))
sleep $random_number
DATE_END="$(date '+%d.%m.%Y %H:%M:%S')"
echo "[$$] $DATE_END Скрипт завершился, работал $(( random_number / 60)) минут" >> $log_file

