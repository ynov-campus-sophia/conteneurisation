FROM python:3.12-slim-bookworm
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -qq net-tools curl nmap iproute2 tcpdump iputils-ping
ADD . .
RUN pip install -r requirements.txt
#ENTRYPOINT ["python", "main.py"]
#CMD ["192.168.0.*"]
