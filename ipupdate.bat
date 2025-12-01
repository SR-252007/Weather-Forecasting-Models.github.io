echo off
set updateCommand="curl https://api.dnsexit.com/dns/ud/?apikey=d5l5TS25vAubsc9N5iaz2Wh31QSY8k -d host=weatherforecasting.work.gd"
rem Create a scheduled task to run every 12 minutes. It must be run as System Administrator because it uses the SYSTEM account..
schtasks /create /tn "DNS Exit IP Update" /tr %updateCommand% /sc minute /mo 12 /ru SYSTEM
echo DNS Exit IP Update Task created.