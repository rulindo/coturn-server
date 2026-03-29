FROM coturn/coturn:latest

USER root

RUN apt-get update && apt-get install -y uuid-runtime

USER coturn

COPY turnserver.conf /etc/coturn/turnserver.conf

EXPOSE 3478
EXPOSE 3478/udp
EXPOSE 5349
EXPOSE 5349/udp

CMD ["turnserver", "-c", "/etc/coturn/turnserver.conf", "--no-stdout-log"]
