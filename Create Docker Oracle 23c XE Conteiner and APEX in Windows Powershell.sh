#Create Docker Oracle 23c XE Conteiner in Windows Powershell

#Get image
docker pull container-registry.oracle.com/database/free:latest


docker create -it --name ORACLE23C_CONTEINER01 -p 1523:1523 -p 8500:5500 -p 8023:8080 -p 9043:8443 -p 9922:22 -e ORACLE_PWD=teste123 container-registry.oracle.com/database/free:latest
curl -o unattended_apex_install_23c.sh https://raw.githubusercontent.com/Pretius/pretius-23cfree-unattended-apex-installer/main/src/unattended_apex_install_23c.sh
curl -o 00_start_apex_ords_installer.sh https://raw.githubusercontent.com/Pretius/pretius-23cfree-unattended-apex-installer/main/src/00_start_apex_ords_installer.sh
docker cp unattended_apex_install_23c.sh ORACLE23C_CONTEINER01:/home/oracle
docker cp 00_start_apex_ords_installer.sh ORACLE23C_CONTEINER01:/opt/oracle/scripts/startup
docker start ORACLE23C_CONTEINER01

docker exec -it ORACLE23C_CONTEINER01 /bin/bash
 tail -f /home/oracle/unattended_apex_install_23c.log


