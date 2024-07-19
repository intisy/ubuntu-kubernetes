Install
---------

```
bash kubernetes-center/run.sh repo=mysql-kubernetes action=install pat=$PAT args="username=username password=password"
```

Deinstall
---------

```
bash kubernetes-center/run.sh repo=mysql-kubernetes action=deinstall pat=$PAT
```

Use
---------

Inside pod:
```
apt update
apt install nfs-common
mkdir /mnt/nfs
mount -t nfs nfs-server.default.svc.cluster.local:/ /mnt/nfs
```
