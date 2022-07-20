FROM alpine:latest
MAINTAINER Carlos Parodi (cparodif)
RUN mkdir -p /etc/ssl/certs/  \
    && apk update &&  apk upgrade  \
    && apk add --update --no-cache openrc rsync openssh  ca-certificates rsnapshot mc\
    && cp /etc/ssl/certs/ca-certificates.crt /etc/ssl/cert.pem \
    && /usr/sbin/update-ca-certificates --fresh  \
    && cp /etc/ssh/sshd_config /etc/ssh/sshd_config_ori \
    && cp /etc/rsnapshot.conf.default /etc/rsnapshot.conf \
    && apk add -U tzdata \
    && cp /usr/share/zoneinfo/Europe/Madrid /etc/localtime \
    && echo "Europe/Madrid" > /etc/timezone \
    && apk del tzdata \
    && rm -rf /etc/ssh/ssh_host_rsa_key /etc/ssh/ssh_host_dsa_key \ 
    && rm -rf /var/cache/apk/*  /tmp/*   

COPY --chown=root:root  entrypoint.sh /
RUN   chmod +x /entrypoint.sh 
ENTRYPOINT ["/entrypoint.sh"]
