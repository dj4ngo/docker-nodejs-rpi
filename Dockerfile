FROM dj4ngo/alpine-rpi

MAINTAINER sboyron <sebastien@boyron.eu>

# Use busybox for x86_64
RUN [ "/cots/mv", "/bin/busybox", "/bin/busybox.arm" ]
RUN [ "/cots/cp", "/cots/busybox", "/bin/busybox" ]

RUN [ "/cots/qemu-arm-static", "/sbin/apk", "-v", "update" ]
RUN [ "/cots/qemu-arm-static", "/sbin/apk", "-v", "upgrade" ]
RUN [ "/cots/qemu-arm-static", "/sbin/apk", "-v", "add", "--update", "nodejs", "nodejs-npm" ]
RUN [ "rm", "-rf", "/var/cache.apk/*" ]

# Restore busybox
RUN [ "/cots/mv", "/bin/busybox.arm", "/bin/busybox" ]

