FROM python:2.7-slim-buster
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -qq net-tools curl nmap iproute2 tcpdump
ADD . .
RUN pip install -r requirements.txt
#ENTRYPOINT ["python", "main.py"]
#CMD ["192.168.0.*"]
