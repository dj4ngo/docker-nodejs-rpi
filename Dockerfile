FROM dj4ngo/nodejs-rpi

MAINTAINER sboyron <sebastien@boyron.eu>

RUN apk update && \
apk upgrade && \
apk add --update nodejs nodejs-npm && \
rm -rf /var/cache/apk/* 

