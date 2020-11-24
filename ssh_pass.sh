#!/bin/bash
sum_ok=$(md5sum /etc/ssh/sshd_config_bkp|  awk -F" " {'print $1'})
sum_bad=$(md5sum /etc/ssh/sshd_config|  awk -F" " {'print $1'})
if [ "$sum_ok" == "$sum_bad" ]; then
   printf "OK la Config ssh \n"
else
  sudo rm -f /etc/ssh/sshd_config_aws
  sudo mv /etc/ssh/sshd_config  /etc/ssh/sshd_config_aws
  sudo cp /etc/ssh/sshd_config_bkp  /etc/ssh/sshd_config 
  sudo service sshd restart 
  printf "Realizado el cambio de archivo \n"
fi


