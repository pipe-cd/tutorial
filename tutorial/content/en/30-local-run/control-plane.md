---
title: "01. Control Plane"
weight: 1
---

# <span style="color:red">TODO: FIX the links</span>
---

This guide shows your how to run a Control Plane locally by docker-compose.

This corresponds to [1] in the figure below.
<img src="/images/30-local-run/architecture.png">

A Control Plane is made up of multiple components like below.
<img src="/images/control-plane-architecture.png">

In this guide, we will install a Control Plane by creating each component as containers and use `docker-compose` to organize them.

cf. See [architecture-overview doc](https://pipecd.dev/docs/user-guide/managing-controlplane/architecture-overview/) for details.

## Prerequisites

- You have installed [Docker Engine](https://docs.docker.com/engine/).
- You can execute [docker-compose](https://docs.docker.jp/compose/install.html).
- You can pull images from `ghcr.io`.


## Installation

1. Execute the following command on [docker-compose.yaml](https://github.com/ca-dp/pipecd-tutorial/tree/main/src/03-local-run/01-control-plane/docker-compose.yaml).
```sh
docker-compose up
```

After the command, you will see logs as below.
```log
pipecd-server-1   | successfully loaded control-plane configuration
pipecd-server-1   | successfully connected to file store
pipecd-server-1   | successfully connected to data store
pipecd-server-1   | grpc server will be run without tls
pipecd-server-1   | grpc server will be run without tls
pipecd-server-1   | grpc server is running on [::]:9080
pipecd-server-1   | grpc server is running on [::]:9083
pipecd-server-1   | grpc server will be run without tls
pipecd-server-1   | admin server is running on 9085
pipecd-server-1   | grpc server is running on [::]:9081
pipecd-server-1   | start running http server on :9082
```

## Confirmation

1. Access the console running on [http://localhost:8080](http://localhost:8080)
2. The following screen will appear. Enter the following value and `CONTINUE`.
   - `Project Name`: `control-plane-local`　[^1]

    <img src="/images/ui/login1.png">

3. The following screen will appear. Enter the following values and `LOGIN`.
   - `Username`: `hello-pipecd` [^1]
   - `Password`: `hello-pipecd`

    <img src="/images/ui/login2.png">

4. If successful, the following screen will appear.

    <img src="/images/ui/applications.png">

[^1]: These values are defined in [control-plane-config.yaml>`spec.projects`](https://github.com/ca-dp/pipecd-tutorial/tree/main/src/volume/pipecd-config/control-plane-config.yaml).

## Clean up

1. Execute the following command on the [docker-compose.yaml](https://github.com/ca-dp/pipecd-tutorial/tree/main/src/03-local-run/01-control-plane/docker-compose.yaml).
   This will delete all the containers including data in the data stores.

```console
docker-compose down
```


## Appendix

### How to reboot the Control Plane's `server` component with data retained

Since `docker-compose down` will delete data in the data stores, you need to reregister them after rebooting.

You can retain data and reboot the Control Plane's `server` component by following commands, which reboot only the `server`.

```console
docker-compose rm -fsv pipecd-server
docker-compose up pipecd-server
```


### How to use other version images

Edit the following points in the [docker-compose.yaml](https://github.com/ca-dp/pipecd-tutorial/tree/main/src/03-local-run/01-control-plane/docker-compose.yaml).
- `service.pipecd-server.image`
- `service.pipecd-ops.image`

cf. See [here](https://github.com/pipe-cd/pipecd/pkgs/container/pipecd) for official image tags.


### Note: `control-plane-local` is a debugging project


Since `control-plane-local` is defined in [control-plane-config.yaml](https://github.com/ca-dp/pipecd-tutorial/tree/main/src/volume/pipecd-config/control-plane-config.yaml), it is a debugging project. (cf. [control-plane-configuration](https://pipecd.dev/docs/user-guide/managing-controlplane/configuration-reference/#control-plane-configuration))

Therefore there are some limits. For example, you cannot edit RBAC/SSO of the project.

If you want to avoid them, you need to register a new project on the owner page, which is running on [http://localhost:9082](http://localhost:9082).

For details, go to [The owner page and the admin page] section.
<span style="color:red">// This section should be moved to '40-features/control-plane/admin'</span>