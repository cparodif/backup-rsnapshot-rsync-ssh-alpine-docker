## Otras actividades

### Terminal ubuntu 20.04
```
####### ssh root@localhost 
## ----- pas=toor
```
### Terminal ubuntu 20.04
```
# docker-compose pause
# rsync --progress -avhe ssh /a2021m07d14/hd400Gb/dePapa/2022-06-06-S9/ root@192.168.210.11:/snapshot/2022-06-06-S9/
```

### nuevo  Terminal ubuntu 20.04
```
# cd ~/docker/asrr && sudo su
# docker run -d -p 22:22 -v /media/g4560/bc6b0d34-aac5-46b8-88a3-07c6c36fff6c1/hd385/snapshot:/snapshot asrr
# o
# docker start e41
# docker stop e41
# docker run -d -p 22:22 -v /home/g4560/backups:/bckps asr
# ---- docker ps 
# ---- docker exec -it 69b sh
```

### ---- terminal alpine
```
# ---- cat /info.txt
```
### Terminal ubuntu 20.04
```
# ---- ssh root@192.168.210.11
# ---- ssh-keygen -f "/root/.ssh/known_hosts" -R "192.168.210.11"
```

Hacer copias
### Terminal ubuntu 20.04
```
# rsync --progress -avhe ssh /home/g4560/docker/ root@192.168.210.11:/snapshot/docker/
# rsync --progress -avhe ssh /a2021m07d14/hd400Gb/dePapa/2022-06-06-S9/ root@192.168.210.11:/snapshot/2022-06-06-S9/
# docker stop E41
```


### comparar original y copia con meld
```
# docker-compose up -d
# ssh-keygen -f "/root/.ssh/known_hosts" -R "192.168.210.11"
# ssh root@192.168.210.11
# rsnapshot -t dia 
# du -sh /snapshot/*
# rsnapshot  dia
# du -sh /snapshot/*
# cd  /snapshot
# ls -alh /snapshot
# du -sh *
# ls - Rlahi
# mc 
# (en mc) al hacer click en un fichero de la izda, en panel derecho config "info" se ve el numero de links
```

### Terminal Ubuntuo 20.04. Construir y utilizar imagen sin  usar docker-compose
```
cd ~/docker/backup
sudo su
chmod +x -v entrypoint.sh
docker build . -t backup
docker run -it -p 22:22 -v /home/g4560/backups:/bckps asr
docker ps 
docker exec -it 69b sh
```


Sitios de consulta:
- https://github.com/pablokbs/peladonerd/tree/master/v2m/8
- [Video youtube: BACKUPS FACILES con DOCKER! - V2M / RSNAPSHOT](https://youtu.be/gxJqpBsPseM )
- [Docker rsyn docker-entrypoint.sh](https://github.com/eea/eea.docker.rsync/blob/master/docker-entrypoint.sh)
- [Docker rsyn](https://hub.docker.com/r/eeacms/rsync)
- [Docker rsnapshot]()
- [linuxserver/rsnapshot](https://docs.linuxserver.io/images/docker-rsnapshot)
- [github linuxserver docker snapshot](https://github.com/linuxserver/docker-rsnapshot)
- [rsync web](https://rsync.samba.org/)
- [Rsync Linux: Cómo usar y ejemplos comando. solvetic.com](https://www.solvetic.com/tutoriales/article/8273-rsync-linux-como-usar-ejemplos-comando/)
- [rsnapshot.org web](https://rsnapshot.org) ::: https://github.com/rsnapshot) ::: https://github.com/rsnapshot/rsnapshot 
- https://rsnapshot.org/faq.html
> I have sync_first enabled and link_dest enabled and multiple backup lines in my rsnapshot.conf file, and I am finding the –link-dest option is not being passed to rsync for the second and subsequent backups, so a lot of files are being duplicated in my snapshot_root without being hard linked. What’s going on?

> rsnapshot versions 1.2.9 and 1.3.0 have a bug where –link-dest is omitted in these circumstances for any backup where the .sync directory exists when the backup is started. This bug was fixed in rsnapshot version 1.3.1. With older versions of rsnapshot, please take care to avoid this combination, for example by disabling link_dest or sync_first.
- [script para rsyn emulando rsnapshot](https://fbalaguer.com/articulo/rsync-la-mejor-herramienta-backup-para-linux)

Revisar:
- [github.com/ragoal/alpine-sshd-container](https://github.com/ragoal/alpine-sshd-container)


Util:
- [Sintaxis markdown l.md](https://markdown.es/sintaxis-markdown/)




## Consultas de estudio realizadas 

https://github.com/eea/eea.docker.rsync/blob/master/docker-entrypoint.sh

https://manpages.org/rsnapshot

https://rsnapshot.org/faq.html

https://wiki.alpinelinux.org/wiki/Setting_up_a_SSH_server

https://github.com/ragoal/alpine-sshd-container

https://github.com/pablokbs/peladonerd/blob/master/varios/12/docker-compose.yaml

https://docs.docker.com/engine/reference/builder/

https://docs.docker.com/storage/volumes/

https://www.datos101.com/blog/copias-de-seguridad-que-es-la-regla-3-2-1/

https://www.ionos.es/digitalguide/servidores/herramientas/como-crear-copias-de-seguridad-del-servidor-con-rsync/

https://superuser.com/questions/69514/windows-alternative-to-rsync

https://dockertips.com/utilizando-docker-compose

    docker-compose up: da instrucciones a Docker para crear el contendor y ejecutarlo.

    docker-compose down: apaga todo los servicios que levantó con docker-compose up.

    docker-compose ps: permite ver los contenedores funcionando.

    docker-compose exec: permite ejecutar un comando a uno de los servicios levantados de Docker-compose.
https://thesolving.com/es/contenerizacion/como-utilizar-docker-compose/#

https://docs.docker.com/compose/compose-file/

https://github.com/compose-spec/compose-spec/blob/master/spec.md

https://www.netmentor.es/Entrada/docker-compose

https://docs.docker.com/compose/reference/exec/

https://es.ccm.net/ordenadores/linux/2414-sed-eliminar-una-o-varias-lineas-de-un-fichero/

sed '/la linea que contiene esto será eliminada/d' mi_fichero.txt

https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-20-04-es

https://github.com/ches/docker-kafka/blob/master/Dockerfile

https://www.tecmint.com/rsnapshot-a-file-system-backup-utility-for-linux/

https://www.guia-ubuntu.com/index.php/Montar_particiones

***********************************************************************

ssh-keygen -f "/root/.ssh/known_hosts" -R "172.17.0.2"

nano /root/.ssh/known_hosts

https://docs.docker.com/develop/develop-images/dockerfile_best-practices/

***********************************************************************

https://www.cyberciti.biz/faq/how-to-install-openssh-server-on-alpine-linux-including-docker/

https://github.com/linuxserver/docker-openssh-server

https://gist.github.com/c3stream/e8661730d53112ddcfb2ef104d6a1707

https://phoenixnap.com/kb/how-to-ssh-into-docker-container

https://conpilar.kryptonsolid.com/2-formas-de-ssh-en-un-contenedor-docker-en-ejecucion/SSH sin contraseña entre contenedores

https://conpilar.kryptonsolid.com/2-formas-de-ssh-en-un-contenedor-docker-en-ejecucion/

https://docs.docker.com/network/macvlan/

https://docs.docker.com/network/network-tutorial-standalone/

https://stackoverflow.com/questions/63602750/how-to-create-and-add-user-with-password-in-alpine-dockerfile

https://www.gnu.org/software/bash/manual/bash.html

https://www.gnu.org/software/bash/manual/bash.html#Special-Parameters

"$@"

https://www.man7.org/linux/man-pages/man8/sshd.8.html manual opciones de /usr/sbin/sshd

https://tecnonautas.net/entendiendo-y-ejecutando-el-comando-linux-unix-sshd/
```
-e Cuando se especifica esta opción, sshd enviará la salida al error estándar en lugar del registro del sistema.
-D Cuando se especifica esta opción sshd no se separará y no se convertirá en un demonio. Esto permite una fácil monitorización de sshd
-p port Especifica el puerto en el que el servidor escucha las conexiones (predeterminado 22). Se permiten múltiples opciones de puertos. Los puertos especificados en el archivo de configuración se ignoran cuando se especifica un puerto de línea de comandos.
-h host_key_file Especifica un archivo desde el que se lee una clave del host. Esta opción debe darse si sshd no se ejecuta como root (ya que los archivos de clave del host normal no son normalmente legibles por nadie más que por root). El valor por defecto es /etc/ssh/ssh_host_key para la versión de protocolo 1, y /etc/ssh/ssh_host_rsa_key y /etc/ssh/ssh/ssh_host_host_dsa_key para la versión de protocolo 2. Es posible tener varios archivos de clave de host para las diferentes versiones de protocolo y algoritmos de clave de host.

cat ~/.ssh/id_rsa.pub
la clave pública lo añadiremos al fichero $HOME/.ssh/authorized_keys del usuario y servidor destino.

evitar que SSH pregunte ... 
ssh lremdot1

The authenticity of host 'lremdot1 (10.49.0.186)' can't be established.
RSA key fingerprint is 7d:56:4e:b0:8f:42:4d:01:40:0b:f0:67:10:82:8b:46.
Are you sure you want to continue connecting (yes/no)?
```
https://puerto53.com/linux/conexiones-seguras-con-ssh/
```
root@lhpilox01 .ssh]# pwd
/root/.ssh
[root@lhpilox01 .ssh]# cat config
Host *
StrictHostKeyChecking no
UserKnownHostsFile=/dev/null
[ root@lhpilox01 .ssh]#
find / -type f -name "*.conf"
```
https://www.digitalocean.com/community/tutorials/how-to-use-find-and-locate-to-search-for-files-on-linux-es

https://github.com/lordbasex/docker/blob/master/docker-easy-rsa/run.sh
```
find / -type f -name "daemon.json"

/snap/docker/1690/config/daemon.json
/snap/docker/1779/config/daemon.json
/var/snap/docker/1690/config/daemon.json
/var/snap/docker/1779/config/daemon.json
```
https://docs.docker.com/network/proxy/

https://docs.docker.com/engine/reference/commandline/run/

https://github.com/lordbasex/docker/blob/master/docker-easy-rsa/Dockerfile
```
LABEL maintainer="..."
```
https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
```
ENV TIMEZONE='Europe/Madrid' \

  ENV TZ='Europe/Madrid' \
	DOMAIN_OVPN='172.16.0.203' \
	EASYRSA_REQ_COUNTRY='ES' \
	EASYRSA_REQ_PROVINCE='Cádiz' \
	EASYRSA_REQ_CITY='Cádiz' \
	EASYRSA_REQ_ORG='particular' \
	EASYRSA_REQ_EMAIL='123@456.789' \
	EASYRSA_REQ_OU='server'

/usr/share/zoneinfo/Europe/Madrid /etc/localtime
```
alpine linux timezone

https://wiki.alpinelinux.org/wiki/Alpine_setup_scripts#setup-timezone

https://github.com/gliderlabs/docker-alpine/issues/136

https://www.cyberciti.biz/faq/how-to-install-openssh-server-on-alpine-linux-including-docker/

https://github.com/danielguerra69/alpine-sshd

https://github.com/tgmuender/ssh-mock/blob/master/Dockerfile

https://github.com/trashpanda001/docker-alpine-sshd/blob/master/versions/7.9-r1/Dockerfile

https://www.ssh.com/academy/ssh/keygen

https://man7.org/linux/man-pages/man5/sshd_config.5.html

https://www.freecodecamp.org/espanol/news/rsync-ejemplos-opciones-y-copiar-archivos-atraves-ssh/

https://linuxhandbook.com/ssh-into-container/

https://serverfault.com/questions/132970/can-i-automatically-add-a-new-host-to-known-hosts

https://wiki.mozilla.org/CA

https://techoverflow.net/2021/01/09/what-is-the-alpine-linux-default-login-password/

root password vacio

https://wiki.alpinelinux.org/wiki/Generating_SSL_certs_with_ACF
``` 
/etc/ca-certificates.conf
/usr/sbin/update-ca-certificates
/usr/share/ca-certificates/mozilla/AC_RAIZ_FNMT-RCM.crt
/usr/share/ca-certificates/mozilla/AC_RAIZ_FNMT-RCM_SERVIDORES_SEGUROS.crt
```
https://pkgs.alpinelinux.org/contents?branch=edge&name=ca-certificates&arch=x86_64&repo=main

https://www.harding.motd.ca/autossh/README.txt

https://pkgs.alpinelinux.org/package/edge/community/x86_64/autossh

https://www.ssh.com/academy/ssh/authorized_keys/openssh

https://www.ssh.com/academy/ssh/sshd_config

https://github.com/panubo/docker-sshd/blob/master/entry.sh

https://www.thegeekstuff.com/2010/04/how-to-fix-offending-key-in-sshknown_hosts-file/

https://askubuntu.com/questions/87449/how-to-disable-strict-host-key-checking-in-ssh

https://gitlab-alpinelinux-org.translate.goog/alpine/ca-certificates/-/issues/2?_x_tr_sl=auto&_x_tr_tl=es&_x_tr_hl=es&_x_tr_pto=wapp

https://github.com/pablokbs/peladonerd

https://wiki.alpinelinux.org/wiki/Rsnapshot

https://www.solvetic.com/tutoriales/article/2721-backup-linux-como-instalar-configurar-y-usar-rsnapshot/

https://github.com/pablokbs/peladonerd/blob/master/v2m/8/Dockerfile

https://www-mikerubel-org.translate.goog/computers/rsync_snapshots/?_x_tr_sch=http&_x_tr_sl=auto&_x_tr_tl=es&_x_tr_hl=es&_x_tr_pto=wapp

https://rsnapshot.org/

http://www.mikerubel.org/computers/rsync_snapshots/

https://github.com/rsnapshot/rsnapshot

https://www.solvetic.com/tutoriales/article/2721-backup-linux-como-instalar-configurar-y-usar-rsnapshot/

Si deseamos crear copias de seguridad para servidores remotos debemos configurar SSH sin contraseña, para esto debemos crear un SSH público y una llave privada para el respectivo acceso. Vamos a generar estas llaves usando el siguiente comando:

https://www.linuxparty.es/99-cloudcomputing/9940-como-instalar-el-servidor-de-respaldo-remoto-rsnapshot-en-red-hat-centos-linux

https://docs.rockylinux.org/es/guides/backup/rsnapshot_backup/

Montar la unidad o el sistema de archivos para copias de seguridad

aplicaciones instaladas en ubuntu

https://elblogdeliher.com/como-saber-la-lista-de-programas-instalados-en-ubuntu/
```
dpkg --get-selections > aplicacionesInstaladas.txt
cat aplicacionesInstaladas.txt
```
https://lamiradadelreplicante.com/

https://lamiradadelreplicante.com/2019/04/01/de-ninja-por-la-terminal-con-el-administrador-de-archivos-nnn/

https://unix.stackexchange.com/questions/176134/installing-packages-by-importing-the-list-with-dpkg-set-selections
```
dpkg --get-selections > pkg-list
avail=`mktemp`
 apt-cache dumpavail > "$avail"
 dpkg --merge-avail "$avail"
 rm -f "$avail"
 dpkg --set-selections < pkg-list
 apt-get dselect-upgrade
```
 https://lamiradadelreplicante.com/2012/01/12/mostrar-conexiones-activas-procesos-y-puertos-abiertos-con-netstat/#comment-71935
```
 netstat -putona

Este combinación, tan curiosa y fácil de recordar…la podemos interpretar de la siguiente forma:

    p Muestra las conexiones para el protocolo especificado que puede ser TCP o UDP
    u Lista todos los puertos UDP
    t  Lista todos los puertos TCP
    o Muestra los timers
    n Nos muestra el numero de puerto
    a Para visualizar todas las conexiones activas del sistema
```
https://www.solvetic.com/tutoriales/article/3081-apt-y-apt-get-linux-ubuntu/

https://www.adslzone.net/2016/11/22/como-obtener-un-listado-de-todas-las-aplicaciones-instaladas-en-el-pc/

https://www.guia-ubuntu.com/index.php?title=Generar_lista_de_paquetes_instalados_y_usarla_para_instalarlos

1. Guardar la lista de nuestro paquetes en un fichero

 dpkg --get-selections | grep -v deinstall > ubuntu-files

2. Cuando instalemos una copia nueva de nuestro Ubuntu, habrá que decirle qué paquetes queremos que instale:
```
 sudo aptitude update
 sudo aptitude dist-upgrade
 sudo dpkg --set-selections < ubuntu-files
```
3. Procedemos a instalar los paquetes indicados anteriormente:

 sudo dselect install

Prodederá a mostrarnos todos los paquetes que se instalarán y después de pedirnos permiso los instalará.

Nota: Si te aparece que el comando dselect no se encuentra, instala el programa con:

sudo apt-get install dselect

https://manpages.debian.org/wheezy/dselect/dselect.1.es.html

https://elafosobrerailes.blogspot.com/2009/12/reinstalar-ubuntu-y-mantener-casi-todas.html

https://github.com/Mikroways/docker-rsnapshot/blob/master/Dockerfile

https://github.com/gigatec/docker-rsnapshot/blob/master/imagescripts/rsnapshot.sh

https://github.com/Mikroways/docker-rsnapshot/blob/master/Dockerfile

https://github.com/maff/docker-rsnapshot/blob/master/etc/rsnapshot-common.conf

modificar fichero desde dockerfile

https://github.com/takeyamajp/docker-ubuntu-sshd/blob/master/ubuntu22.04/Dockerfile
```
sed -i 's/^#\(PermitRootLogin\) .*/\1 yes/' /etc/ssh/sshd_config; \
sed -i 's/^\(UsePAM yes\)/# \1/' /etc/ssh/sshd_config; \
```
https://gist.github.com/c3stream/e8661730d53112ddcfb2ef104d6a1707
sed -i s/PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
&& sed -i s/PasswordAuthentication.*/PasswordAuthentication\ yes/ /etc/ssh/sshd_config \
&& sed -i s/#PermitUserEnvironment.*/PermitUserEnvironment\ yes/ /etc/ssh/sshd_config \
&& sed -i -e 's|^#PermitRootLogin yes|PermitRootLogin yes|g' \
       -e 's|^#PasswordAuthentication yes|PasswordAuthentication yes|g' \
       -e 's|^#PermitUserEnvironment yes|PermitUserEnvironment yes|g' \
       -e 's|^#PermitTTY yes|PermitTTY yes|g' \
       /etc/ssh/sshd_config

	https://cneris.com/es/blog/administracion-de-sistemas/item/313-uso-del-comando-sed-en-linux-y-unix-con-ejemplos?limitstart=0

	https://w3cschoool.com/linux-sed

	https://stackoverflow.com/questions/71588285/sed-regex-syntax-for-multiple-searches 

https://developer.mozilla.org/es/docs/Web/JavaScript/Guide/Regular_Expressions

https://regex101.com/

comprobar expresiones regulares sed "\("

https://isolution.pro/es/t/unix/unix-regular-expressions/unix-linux-expresiones-regulares-con-sed

https://www2.infor.uva.es/~mluisa/talf/

https://www.infor.uva.es/~mluisa/talf/docs/aula/A1.pdf

https://www.infor.uva.es/~mluisa/talf/docs/aula/A2.pdf

sed expresiones regulares "\("

https://www.hostinger.com.ar/tutoriales/el-comando-sed-de-linux-usos-y-ejemplos/
```
vi text.txtPrograms must be written for people to read, and only incidentally for machines to execute.” ― Harold Abelson, Structure and Interpretation of Computer Programs

sed ‘’ text.txt

sed ‘’Programs must be written for people to read, and only incidentally for machines to execute.” ― Harold Abelson, Structure and Interpretation of Computer ProgramsPrograms must be written for people to read, and only incidentally for machines to execute.” ― Harold Abelson, Structure and Interpretation of Computer Programs

CTRL+D.

sed '1d' text.txt

sed '2~2 w text2.txt' text.txt 
sed '2 a The Append example' text.txt

echo solvitic | sed s/vitic/vetic/
```
Introducción a Linux. M14 - Direcciones IP | 24/34 | UPV
https://www.youtube.com/c/UPV

https://www.youtube.com/playlist?list=PL6kQim6ljTJv-hMrOngNbCv6kpQYHfFwC

https://youtu.be/XxaOvMjs4fM Introducción a Linux. M13. Uso de sed | 85/108 | UPV
```
vi infile.txt
This is the first line
This is the second line
This is the third line
sed -e s/is/are/ infile.txt
sed -e s/is/are/g infile.txt
sed -e 1,2s/is/are/g infile.txt
sed -e 1,2s:is:are:g infile.txt > outfile.txt
diff infile.txt outfile.txt

the quick brown fox jumped over the lazy dog
a..
b.|j.
..$
l.*
l.*y
the.*
```
http://regex101.com

https://www.youtube.com/watch?v=nXLnx8ncZyE Linux Crash Course - The sed Command

```
vi toppings.txt
Pizza topping combos:
1. Spinach, Pepperoni, Pineapple
2. Pepperoni, Pineapple, Mushrooms
3. Bacon, Banana Peppers, Pineapple
4. Cheese, Pineapple
cat toppings.txt
sed 's/Pineapple/Feta/' toppings.txt 
cat toppings.txt
sed -i 's/Pineapple/Feta/' toppings.txt 
cat toppings.txt
sed 's/Feta/Olives/' toppings.txt 
sed 's Feta Olives ' toppings.txt 
sed 's|Feta|Olives|' toppings.txt 
sed 's.Feta.Olives.' toppings.txt 

find /etc -type f
find /etc -type f > paths.txt 

sed 's//etc//' paths.txt ------------- err
sed 's/Feta//' toppings.txt -------------ok
sed 's./etc..' paths.txt ----------------ok
sed 's./etc.stuff.' paths.txt ----------------ok
```
Awk *****************************

https://youtu.be/oPEnvuj9QrI Linux Crash Course - awk
```
vim tmnt.txt
leonardo blue leader
raphael red hothead
michelangelo orange party-animal
donatello purple geek

cat tmnt.txt

awk ve espacios como de limitadores de campos
así tenemos cuatro líneas con tres campos cada una nombre color personalidad
awk 'comando' archivo
awk '{print}' tmnt.txt
mostramos un campo
awk '{print $1}' tmnt.txt
awk '{print $2}' tmnt.txt
awk '{print $3}' tmnt.txt

{print $3} es un script entre llaves {}
awk '{print $0}' tmnt.txt
imprime el archivo completo porque
$0 representa el archivo completo

awk '{print $1,$3}' tmnt.txt

ls -l | awk '{print $1}' 
ls -ls el resultado verá varios campos individuales
ls -l | awk '{print $2}' 
ls -l | awk '{print $3}' 
ls -l | awk '{print $4}' 
ls -l | awk '{print $5}' 
ls -l | awk '{print $6}' 
ls -l | awk '{print $7}' 
ls -l | awk '{print $8}' 
ls -l | awk '{print $9}' 

echo "Hello from LearnLinux.tv" | awk '{print $1}'
echo "Hello from LearnLinux.tv" | awk '{print $1,$3}'


awk '{print $NF}' tmnt.txt
En NF F representa el número de campos, si hay 99 campos imprime el campo 99
en este caso NF será 3

awk '{print $2}' /etc/passwd

cat /etc/passwd | grep g4560

awk -F':' '{print $2}' /etc/passwd
-F':' establece el delimitador a :

awk -F':' '{print $5}' /etc/passwd
awk -F':' '{print $3}' /etc/passwd
awk -F':' '{print $7}' /etc/passwd
awk -F':' '{print $1, $7}' /etc/passwd
```

```
docker-compose up -d
docker-compose down
docker-compose exec backup sh


Successfully built 87abdb4863f8
Successfully tagged asrr_asrr:latest
WARNING: Image for service asrr was built because it did not already exist. To rebuild this image you must use `docker-compose build` or `docker-compose up --build`.
Creating backup ... done
```

```
sed '/la linea que contiene esto será eliminada/d' mi_fichero.txt

mkdir /bac
mount /dev/sda4 /bac

snap remove docker
apt update
apt upgrade
apt install docker
apt install docker-compose
reinicia ubuntu
```
