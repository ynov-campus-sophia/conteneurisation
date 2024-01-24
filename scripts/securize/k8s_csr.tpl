apiVersion: certificates.k8s.io/v1
kind: CertificateSigningRequest
metadata:
  name: $CURRENT_USER-authentication
spec:
  groups:
  - system:authenticated
  request: $CERT_REQUEST
  signerName: kubernetes.io/kube-apiserver-client-kubelet
  usages:
  - digital signature
  - client auth