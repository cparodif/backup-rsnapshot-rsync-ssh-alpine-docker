#!/bin/sh
echo "************ls /usr/share/ca-certificates/mozilla/* *********************************"  > /info.txt
ls /usr/share/ca-certificates/mozilla/* >> /info.txt
echo "************ls /usr/share/ca-certificates/* *********************************"  >> /info.txt
ls /usr/share/ca-certificates/* >> /info.txt
echo "******************find / -type f -name "ca-certificates.*"***************************"  >> /info.txt
find / -type f -name "ca-certificates.*"  >> /info.txt
echo "************cat /etc/ca-certificates.conf*********************************"  >> /info.txt
cat /etc/ca-certificates.conf >> /info.txt
echo "************cat /etc/ssl/certs/ca-certificates.crt*********************************"  >> /info.txt
cat /etc/ssl/certs/ca-certificates.crt >> /info.txt
echo "*******************ssh-keygen -A **************************"  >> /info.txt
ssh-keygen -A >> /info.txt
echo "******************/etc/ssh/ssh_host_rsa_key ***************************"  >> /info.txt
cat /etc/ssh/ssh_host_rsa_key >> /info.txt
echo "******************/etc/ssh/ssh_host_dsa_key.pub***************************"  >> /info.txt
cat /etc/ssh/ssh_host_dsa_key.pub >> /info.txt
echo "******************ls -la /info.txt***************************"  >> /info.txt
ls -la /info.txt >> /info.txt
echo "******************ls -la /***************************"  >> /info.txt
ls -la / >> /info.txt
echo "******************pwd***************************"  >> /info.txt
pwd >> /info.txt
echo "******************whoami***************************"  >> /info.txt
whoami >> /info.txt
echo "******************ifconfig***************************"  >> /info.txt
ifconfig >> /info.txt
echo "******************/etc/ssh/sshd_config_ori***************************"  >> /info.txt
cat /etc/ssh/sshd_config_ori >> /info.txt
echo "******************/etc/ssh/sshd_config***************************"  >> /info.txt
sed -i 's/^#\(PermitRootLogin\) .*/\1 yes/' /etc/ssh/sshd_config 
sed -i 's/^#\(PasswordAuthentication\) .*/\1 yes/' /etc/ssh/sshd_config 
cat /etc/ssh/sshd_config >> /info.txt
echo "******snapshot_root	/a00 ****/etc/rsnapshot.conf******"  >> /info.txt
sed -i '/^snapshot_root.*.snapshot/d' /etc/rsnapshot.conf 
sed -i '/^\(cmd_ssh\) .*/d' /etc/rsnapshot.conf 
sed -i '/^\(retain.*alpha\)/d' /etc/rsnapshot.conf 
sed -i '/^\(retain.*beta\)/d' /etc/rsnapshot.conf 
sed -i '/^\(retain.*gamma\)/d' /etc/rsnapshot.conf    
sed -i '/^\(backup.*home\)/d' /etc/rsnapshot.conf    
sed -i '/^\(backup.*etc\)/d' /etc/rsnapshot.conf 
sed -i '/^\(backup.*usr.*local\)/d' /etc/rsnapshot.conf 

echo 'cmd_ssh	/usr/bin/ssh' >> /etc/rsnapshot.conf 
echo 'retain	dia	7' >> /etc/rsnapshot.conf 
echo 'retain	semana	4' >> /etc/rsnapshot.conf 
echo 'retain	mes	12' >> /etc/rsnapshot.conf 
echo 'link_dest	1' >> /etc/rsnapshot.conf 
echo 'sync_first	0' >> /etc/rsnapshot.conf 

echo 'snapshot_root	/a00' >> /etc/rsnapshot.conf 
echo 'exclude	/a01/.*/	' >> /etc/rsnapshot.conf
echo 'exclude	/a01/Imágenes/	' >> /etc/rsnapshot.conf
echo 'exclude	/a01/Música/	' >> /etc/rsnapshot.conf
echo 'exclude	/a01/Vídeos/	' >> /etc/rsnapshot.conf
echo 'exclude	/a01/Plantillas/	' >> /etc/rsnapshot.conf
echo 'exclude	/a01/Público/	' >> /etc/rsnapshot.conf
echo 'exclude	/a01/snap/	' >> /etc/rsnapshot.conf
echo 'exclude	/a01/Papelera/	' >> /etc/rsnapshot.conf
echo 'exclude	/a01/"VirtualBox VMs".*/	' >> /etc/rsnapshot.conf

echo 'backup	/a01/	g4560/' >> /etc/rsnapshot.conf
echo 'backup	/a02/	dePapa/' >> /etc/rsnapshot.conf
echo 'backup	/a03/	deMama/' >> /etc/rsnapshot.conf
echo 'backup	/a04/	deCarlos/' >> /etc/rsnapshot.conf
echo 'backup	/a05/	deAna/' >> /etc/rsnapshot.conf


echo "******************/etc/rsnapshot.conf*************************"  >> /info.txt
cat /etc/rsnapshot.conf >> /info.txt 
echo "*********** root: ...... | chpasswd ***********************"  >> /info.txt
echo  "root:toor" | chpasswd  
echo "******************cd /***************************"  >> /info.txt
cd /  >> /info.txt
cd /

cat /info.txt

exec /usr/sbin/sshd -D -e "$@"
