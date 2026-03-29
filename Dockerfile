FROM alpine:latest

RUN apk add --no-cache coturn

COPY turnserver.conf /etc/turnserver.conf

EXPOSE 3478
EXPOSE 3478/udp
EXPOSE 5349
EXPOSE 5349/udp

CMD ["turnserver", "-c", "/etc/turnserver.conf"]
