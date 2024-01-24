FROM debian:bullseye-slim
RUN apt update && apt upgrade -y && apt-get install curl unzip -y

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update
RUN which aws
RUN aws --version

RUN mkdir -p /root/.aws
COPY ./config-aws/* /root/.aws

ENTRYPOINT ["aws"]
CMD ["s3","ls","s3://ynovcampus", "--endpoint-url", "https://ams3.digitaloceanspaces.com"]