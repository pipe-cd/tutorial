---
title: "Clean up"
weight: 90
description: "Clean up the local PipeCD you built"
---

## Clean up the Piped

```console
docker stop <CONTAINER ID or Name>
```

cf. [https://docs.docker.com/reference/cli/docker/container/stop/](https://docs.docker.com/reference/cli/docker/container/stop/)


## Clean up the Control Plane

Execute the following command on the [docker-compose.yaml](https://github.com/ca-dp/pipecd-tutorial/blob/main/src/installation/control-plane/docker-compose.yaml) you used.

```console
docker-compose down
```

### Appendix: How to avoid reregistering after rebooting

You can reboot the Control Plane partially with data (pipeds,applications, etc.) retained by following commands. Only the `server` component will be rebooted.

```console
docker-compose rm -fsv pipecd-server
docker-compose up pipecd-server
```

cf. [Architecture overview](https://pipecd.dev/docs/user-guide/managing-controlplane/architecture-overview/)
