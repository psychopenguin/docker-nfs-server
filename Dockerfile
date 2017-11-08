FROM alpine:3.6
RUN apk add --no-cache nfs-utils
COPY exports /etc/exports
COPY entrypoint.sh /entrypoint.sh
VOLUME /export
EXPOSE 2049/tcp
ENTRYPOINT /entrypoint.sh
