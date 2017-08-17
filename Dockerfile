FROM dj4ngo/alpine-rpi

MAINTAINER sboyron <sebastien@boyron.eu>

RUN [ "/cots/qemu-arm-static", "/sbin/apk", "-v", "update" ]
#TOFIX: apk upgrade doesnt not work and return error code 4, seems to run some scripts/progs bypassing qemu
#RUN [ "/cots/qemu-arm-static", "/sbin/apk", "-v", "upgrade" ]
RUN [ "/cots/qemu-arm-static", "/sbin/apk", "-v", "add", "--update", "nodejs", "nodejs-npm" ]
RUN [ "/cots/qemu-arm-static", "rm", "-rf", "/var/cache.apk/*" ]

