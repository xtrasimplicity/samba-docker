FROM alpine:latest
RUN apk add --no-cache samba bash

EXPOSE 445
CMD ["/usr/sbin/smbd", "-F", "-S", "--no-process-group"]