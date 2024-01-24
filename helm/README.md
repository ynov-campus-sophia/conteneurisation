# TUTORIAL 1: modify the configmap in order to externalize the data value and the configmap name

```
apiVersion: v1
kind: ConfigMap
metadata:
  name: mychart-configmap
data:
  myvalue: "Hello World"
```

# TUTORIAL 2: adapt the code under k8s/nginx/basic and let the annotations configurable via values file

# TUTORIAL 3: mount a configmap to override the default configuration

# TUTORIAL 4: install questdb helm chart