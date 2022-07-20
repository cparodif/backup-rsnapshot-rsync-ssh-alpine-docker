Conectar disco usb

## Copia diaria:

### 1. Terminal ubuntu 20.04. Iniciar contenedor backup-rsync-ssh-alpine-docker.
```
cd Descargas
git clone https://github.com/cparodif/backup-rsnapshot-rsync-ssh-alpine-docker.git
cd backup-rsnapshot-rsync-ssh-alpine-docker
sudo su
chmod +x -v entrypoint.sh
docker build . -t backup
o
##### docker build . -t backup -f Dockerfile

docker-compose up -d 
docker-compose exec backup sh
```
ahora tenemos terminal en alpine.

### 2 terminal alpine. Realizar la copia.
```
cat /info.txt
rsnapshot configtest
rsnapshot du
rsnapshot -t dia # simulación de la copia de seguridad
rsnapshot -V dia # realización de la copia de seguridad
```
Una vez aparezca "completed successfully", la copia se ha realizado y está actualizada

Consultar información:
```
du -sh /a00/*
rsnapshot diff dia.0 dia.1
```
Salir terminal alpine
```
exit
```

### 3. Terminal ubuntu 20.04. Cerrar contenedor backup-rsync-ssh-alpine-docker.
```
docker-compòse down
```
Consultar estado contendores
```
docker ps -a
```
Eliminar contenedores 
```
docker stop idcontendor1 idcontenedor2 ...
docker rm idcontendor1 idcontendor2 ...
```
Consultar estado imagenes
```
docker images
```
Elimina imagen
```
docker rmi nombreImagen:tagImagen
```


## Copia semanal y mensual:

rsnapshot -V semana # realización de la copia de seguridad semanal (cuando tengamos 7 días)

rsnapshot -V mes # realización de la copia de seguridad (cuando tengamos 4 semanas)
