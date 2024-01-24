# FIND ATTACKER MAC AND IP via ifconfig

# FIND TARGET MAC AND IP via arp -a

# run it

```
docker run -it --env ATTACKER_IP=192.168.0.156 --env ATTACKER_MAC=f8:b5:4d:f1:af:18 --env TARGET_IP=192.168.0.156 --env TARGET_MAC=00:a3:88:5d:ba:59 --network host asinatra/arpscan:v1.0.5 bash 
```

# find gateway

```
ifconfig
```

# scan the gateway

```
python main.py 192.168.1.*
```

# nmap scan

```
root@aureliano-N141CU:/# nmap grafana.ynovsophia.ddns.net
Starting Nmap 7.70 ( https://nmap.org ) at 2023-12-15 08:36 UTC
Nmap scan report for grafana.ynovsophia.ddns.net (159.223.241.14)
Host is up (0.035s latency).
Not shown: 998 filtered ports
PORT    STATE SERVICE
80/tcp  open  http
443/tcp open  https

Nmap done: 1 IP address (1 host up) scanned in 5.56 seconds
```

# cluster ingress nginx

```
aureliano@aureliano-N141CU ~ $ k get svc -n ingress-nginx 
NAME                                 TYPE           CLUSTER-IP      EXTERNAL-IP      PORT(S)                      AGE
ingress-nginx-controller             LoadBalancer   10.245.244.34   159.223.241.14   80:32198/TCP,443:32509/TCP   47d
```

# spoofing

```
python arp-request.py
```

https://github.com/mpostument/hacking_tools/tree/master

https://addozhang.medium.com/kubernetes-network-learning-with-cilium-and-ebpf-aafbf3163840

https://gist.github.com/AysadKozanoglu/b98ac4d121775e510ebac6ff6e67e13d