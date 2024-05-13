#Create Docker Oracle 19c Conteiner in Windows Powershell

#Copy the image

docker pull doctorkirk/oracle-19c

#Create local directory

mkdir -p C:\Docker\Oracle19c\oradata

#Run the Container
docker run --name ORACLE19C_CONTEINER01 -p 1521:1521 -e ORACLE_SID=DB19CDOCKER1 -e ORACLE_PWD=teste123 -e ORACLE_CHARACTERSET=WE8MSWIN1252 -v C:\Docker\Oracle19c\oradata\:/opt/oracle/oradata doctorkirk/oracle-19c

#Access the Container
docker exec -it ORACLE19C_CONTEINER01 bash -c "source /home/oracle/.bashrc; sqlplus /nolog"



