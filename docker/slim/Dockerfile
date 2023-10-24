FROM python:3.10-slim
ENV PYTHONUNBUFFERED 1

WORKDIR /app/

ADD requirements.txt .
RUN pip install -r requirements.txt

COPY src .

CMD ["python", "run.py"]