FROM dj4ngo/alpine-rpi

MAINTAINER sboyron <sebastien@boyron.eu>

RUN [ "/cots/qemu-arm-static", "/bin/sh", "-c", "apk update" ]
#apk upgrade && \
#apk add --update nodejs nodejs-npm && \
#rm -rf /var/cache/apk/* 
#" ]  
#

