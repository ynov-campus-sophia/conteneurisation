#!/bin/bash
#do-ams3-ynov-cluster

if [ $# -eq 0 ]; then
    >&2 echo "No arguments provided default to do-ams3-ynov-cluster"
    export K8SCLUSTER=do-ams3-ynov-cluster
else
    export K8SCLUSTER=$1
fi

export CURRENT_USER=$(whoami)

mkdir -p ./generated/$CURRENT_USER/certs
mkdir -p ./generated

envsubst < csr.tpl > ./generated/$CURRENT_USER/certs/$CURRENT_USER.csr.cnf

openssl genrsa -out ./generated/$CURRENT_USER/certs/$CURRENT_USER.key 4096

openssl req -config ./generated/$CURRENT_USER/certs/$CURRENT_USER.csr.cnf -new -key ./generated/$CURRENT_USER/certs/$CURRENT_USER.key -nodes -out ./generated/$CURRENT_USER/certs/$CURRENT_USER.csr

openssl req -in ./generated/$CURRENT_USER/certs/$CURRENT_USER.csr -noout -text

export CERT_REQUEST=$(cat ./generated/$CURRENT_USER/certs/$CURRENT_USER.csr | base64 | tr -d '\n')
envsubst < k8s_csr.tpl > ./generated/k8s_csr.yaml

#kubectl apply -f ./generated/k8s_csr.yaml
#sleep 15
#kubectl certificate approve $CURRENT_USER-authentication
#sleep 15
#kubectl get csr $CURRENT_USER-authentication -o jsonpath='{.status.certificate}' | base64 --decode > ./generated/$CURRENT_USER/certs/$CURRENT_USER.crt
#sleep 15
#export CERT_AUTH=$(cat ./generated/$CURRENT_USER/certs/$CURRENT_USER.crt | base64 | tr -d '\n')
#envsubst < kubeconfig.tpl > ./generated/config-do
#sleep 1
# --insecure-skip-tls-verify is needed because of self signed cert
#kubectl --insecure-skip-tls-verify --kubeconfig=./generated/config-do get pods
