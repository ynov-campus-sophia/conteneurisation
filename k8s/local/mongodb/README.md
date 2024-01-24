# deploy mongodb

```
helm pull --untar bitnami/mongodb
helm template . --values values.yaml
helm install mymongodb . --values values.yaml
```
## decode secret

```
k get secret my-mongodb -o yaml
echo MG5rWUYxUWNIcw== | base64 -d
```

# EXEC in POD mongodb and login via mongosh

```
https://www.mongodb.com/docs/mongodb-shell/
$ mongosh -u root -p 0nkYF1QcHs
```

# deploy mongodb nodejs app

create a pod that run the nodejs app that write to db

```
kubectl apply -f ....... 
```

# backup data via job and upload via s3

....
