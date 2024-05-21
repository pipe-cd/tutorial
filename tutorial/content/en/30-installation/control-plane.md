---
title: "2. Control Plane"
weight: 2
description: "Easily install a Control Plane by docker-compose"
---

In this page, you will install a Control Plane on local by `docker-compose`.

This corresponds to `(1)` in the following figure.
![local architecture](/images/architecture.png)


## Installation

1. Execute the following command on [src/installation/control-plane/docker-compose.yaml](https://github.com/ca-dp/pipecd-tutorial/blob/main/src/installation/control-plane/docker-compose.yaml).
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
2. The following screen will appear. Enter the following value and click `CONTINUE`.
   - `Project Name`: `tutorial`　[^1]

    ![login-project](/images/installation/login1.png)

3. The following screen will appear. Enter the following values and click `LOGIN`.
   - `Username`: `hello-pipecd` [^1]
   - `Password`: `hello-pipecd`

    ![login-username-password](/images/installation/login2.png)

4. If successful, the following screen will appear.

    ![applications-page](/images/installation/applications.png)

[^1]: These values are defined in [control-plane.yaml>`spec.projects`](https://github.com/ca-dp/pipecd-tutorial/blob/main/src/installation/control-plane/volume/pipecd-config/control-plane.yaml).

## See Also

- [Architecture Overview](https://pipecd.dev/docs/user-guide/managing-controlplane/architecture-overview/)
- [Managing Control Plane](https://pipecd.dev/docs/user-guide/managing-controlplane/)
- [Installing Control Plane on Kubernetes](https://pipecd.dev/docs/installation/install-control-plane/installing-controlplane-on-k8s/)