FROM python:3.8-slim

LABEL maintainer="aureliano.buendias@outlook.com"

RUN apt-get update && \
    apt-get install -y libpq-dev gcc
RUN pip install --no-cache-dir --upgrade pip
ENV PYTHONUNBUFFERED 1

WORKDIR /app/

ADD requirements.txt .
RUN pip install -r requirements.txt
COPY src .
CMD ["python", "datacollect.py"]
