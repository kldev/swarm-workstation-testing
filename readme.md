## Sample setup for test application on docker swarm

# requirements

- linux
- sudo access
- docker
- docker-compose
- docker swarm initialized

# Machine setup

## Setup etc hosts for local domain

```
192.168.5.50 nexus.hs.local.io
192.168.5.50 docker.hs.local.io
192.168.5.50 trafik.hs.local.io

192.168.5.50 wiki.hs.local.io

192.168.5.50 s3.hs.local.io
192.168.5.50 s3admin.hs.local.io
192.168.5.50 mail.hs.local.io
192.168.5.50 smtp.hs.local.io

192.168.5.50 bord.hs.local.io
```

# Selected services

## Traefik

- create network
- deploy
- open with access admin / xd123


![Traefik 1](/images/traefik_01.png)

![Traefik 2](/images/traefik_02.png)

## Nexus (docker registry)

- deploy
- create docker storage
- create docker hosted on port 5000

Update insecure access in **/etc/docker/daemon.json**

```
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2",
  "insecure-registries": ["docker.hs.local.io"]
}
```


![neuxs 1](/images/nexus_01.png)


## Minio (Local S3 storage)
 

![minio 1](/images/minio_s3_01.png)

![minio 2](/images/minio_s3_02.png)