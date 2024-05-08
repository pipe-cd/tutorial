---
title: "04. Clean up"
weight: 4
description: "Clean up the local PipeCD you built"
---

### 1. Clean up applications

- Application resources
- Configuration files
- Application data in the Control Plae
You need to 

### 2. Clean up the Piped


```console
docker stop <CONTAINER ID or Name>
```

cf. [https://docs.docker.jp/engine/reference/commandline/stop.html](https://docs.docker.jp/engine/reference/commandline/stop.html)


### 3. Clean up the Control Plane

1. Execute the following command on the [docker-compose.yaml](https://github.com/ca-dp/pipecd-tutorial/tree/main/src/03-local-run/01-control-plane/docker-compose.yaml).
   This will delete all the containers including data in the data stores.

```console
docker-compose down
```

#### Note: How to reboot the Control Plane's `server` component with data retained

Since `docker-compose down` will delete data in the data stores, you need to reregister them after rebooting.

You can retain data and reboot the Control Plane's `server` component by following commands, which reboot only the `server`.

```console
docker-compose rm -fsv pipecd-server
docker-compose up pipecd-server
```


