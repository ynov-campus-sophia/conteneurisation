apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: $CERT_AUTH
    server: https://c3638563-c403-4598-914d-4c4a49c93cb5.k8s.ondigitalocean.com
  name: $K8SCLUSTER
contexts:
- context:
    cluster: $K8SCLUSTER
    user: $CURRENT_USER
  name: $K8SCLUSTER
current-context: $K8SCLUSTER
kind: Config
preferences: {}
users:
- name: $CURRENT_USER
  user:
    client-certificate: /home/$CURRENT_USER/certs/$CURRENT_USER.crt
    client-key: /home/$CURRENT_USER/certs/$CURRENT_USER.key