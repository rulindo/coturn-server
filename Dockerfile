FROM alpine:latest

RUN apk add --no-cache coturn

RUN mkdir -p /etc/coturn

COPY turnserver.conf /etc/coturn/turnserver.conf

EXPOSE 3478

CMD ["turnserver", "-c", "/etc/coturn/turnserver.conf", "-v"]
