FROM alpine:latest
RUN apk add --no-cache samba ruby
COPY bin/start /usr/sbin/start-samba
RUN chmod +x /usr/sbin/start-samba

EXPOSE 445
VOLUME /var/lib/samba
CMD ["/usr/sbin/start-samba"]