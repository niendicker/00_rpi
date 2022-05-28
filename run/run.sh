#! /bin/bash
# $1: Version to run 
#     0 = Run production version anything else = Run debug version  
mbpollHome="/home/pi/run/bin/"
#mppollHome="/home/dev/dbms/00_rpi/bin"
configFile="./dev/$2"

if [ "$1" -ne 0 ];  
then #RUN DEBUG VERSION
  echo "Running in debug mode..."
  cd "${mbpollHome}" && ./modbusPoll_dbg.arm "${configFile}"
else #RUN PRODUCTION VERSION
  echo "Running in production mode..."
  cd "${mbpollHome}" &&          \
  nohup             \
  ./modbusPoll.arm "${configFile}" \
  &>/dev/null \
  & 
  disown          
fi