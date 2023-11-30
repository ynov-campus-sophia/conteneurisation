FROM debian:latest
RUN apt-get update && apt-get install net-tools
ENTRYPOINT [ "ifconfig", "eth0", "down" ]
CMD [ "script.sh" ]
