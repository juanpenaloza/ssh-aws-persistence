# ssh-aws-persistence
sshd config rewriter for aws ec2   ssh login account with password.
Script para  reemplazar configuracion de archivo sshd_config  escrita por AWS bloqueando el ingreso de usuario con contraseña.

1. copia el archivo a /usr/bin/ssh_pass.sh  y darle permisos de ejecucion
2. Crear job cron    (* * * * *    /usr/bin/ssh_pass.sh >>/var/log/ssh_pass.log)
3. Crear tu archivo de configuracion sshd   y guardarlo como  sshd_config_bkp
 
