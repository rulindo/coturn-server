FROM coturn/coturn:latest

RUN apt-get update && apt-get install -y uuid-runtime

COPY turnserver.conf /etc/coturn/turnserver.conf

EXPOSE 3478
EXPOSE 3478/udp
EXPOSE 5349
EXPOSE 5349/udp
EXPOSE 49152-65535/udp

CMD ["turnserver", "-c", "/etc/coturn/turnserver.conf", "--no-stdout-log"]
