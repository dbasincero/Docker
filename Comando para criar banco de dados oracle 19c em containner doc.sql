--Comando para criar banco de dados oracle em containner

docker run --name CONTEINER_DB1Z0082 -p 1521:1521 -p 8081:8081 -e ORACLE_SID=DB1Z0082 -e ORACLE_PDB=PDBDB1Z0082 -e ORACLE_PWD=teste123 -v /u01/app/oracle/oradata:/opt/oracle/oradata banglamon/oracle193db:19.3.0-ee


