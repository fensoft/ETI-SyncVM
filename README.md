Docker image to run https://www.eti-lan.xyz/syncvm.php in a container

```
docker run --name eti-syncvm -v <folder or volume>:/lan -d -p 8888:8888 fensoft/eti-syncvm
```

or in docker-compose:

```
version: "3"
services:
  duc:
    image: fensoft/eti-syncvm:1.1
    container_name: eti-syncvm
    ports:
      - 8888:8888
    restart: unless-stopped
    volumes:
      - <folder or volume>:/lan
```

Resilio sync will be running on port 8888. Login: root/lan
