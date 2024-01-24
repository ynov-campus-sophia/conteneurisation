#!/bin/bash

function create_secret {
  mkdir -p ./generated
  kubectl create secret docker-registry $SECRET_NAME --dry-run=client \
    --docker-username=$USERNAME \
    --docker-password=$PASSWORD \
    --docker-server=https://index.docker.io/v1/ \
    --docker-email=$EMAIL -o yaml > ./generated/$SECRET_NAME.yaml
}

SECRET_NAME=myimagepullsecret
USERNAME=asinatra
PASSWORD=xxyyttkkk_replaceme
EMAIL=replaceme@gmail.com

create_secret


