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
