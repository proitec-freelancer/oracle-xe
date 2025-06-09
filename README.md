# oracle-xe
Compose para oracle-xe

docker-compose up -d (para despligue debe estar en la carpeta del .yml)


docker logs -f oracle-xe


docker ps

*** Entrar al contendeor ***
docker exec -it 282528416d86 /bin/bash

*** Salir del contenedor ***
docker-compose down

*** Recrear contenedor ***
docker-compose up -d --force-recreate

*** formas de conexión dentro del contenedor ***
sqlplus sys/123456@localhost:1521/XE as sysdba
sqlplus system/123456@localhost:1521/FREEPDB1

*** Forma manual ***
https://www.youtube.com/watch?v=YHh16KbBulo&ab_channel=DiscoDurodeRoer

https://www.youtube.com/watch?v=ZZebKoySIGI&ab_channel=MultiversoTI

docker pull container-registry.oracle.com/database/express:latest

docker run --name oracle-xe -p 1521:1521 -e ORACLE_PWD=123456 container-registry.oracle.com/database/express:latest


*** Comandos importantes ***
SELECT * FROM DBA_USERS;

ALTER PROFILE DEFAULT LIMIT PASSWORD_LIFE_TIME 90 --CONTRASEÑA CADUCA
ALTER PROFILE DEFAULT LIMIT PASSWORD_LIFE_TIME UNLIMITED

ALTER USER SYSTEM IDENTIFIED BY 1234

--ALCAMBIAR LA CLAVE DEL USUARIO NO PUEDE REUTILIZAR SU CLAVE POR 90 DIAS 
ALTER PROFILE DEFAULT LIMIT PASSWORD_REFUSE_TIME 90 PASSWORD_REUSE_MAX_UNLIMITED;

