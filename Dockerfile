FROM alpine:latest
RUN apk --no-cache add tzdata && \
    cp /usr/share/zoneinfo/Europe/Berlin /etc/localtime && \
    echo "Europe/Berlin" > /etc/timezone && \
    apk --no-cache del tzdata
CMD [ "/bin/sh -c 'uname -a'" ]
