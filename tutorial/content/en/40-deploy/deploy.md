---
title: "1. Simple"
weight: 1
description: "Deploy simply and experience GitOps"
---

In this page, you will deploy an application to your platform in a simple way.

## 1. Prepare config files

1-1. Choose one platform and edit configuration files under [/src/deploy/](https://github.com/ca-dp/pipecd-tutorial/tree/main/src/deploy/) in your cloned repository as bellow.
   > **Note**: Each platform has a deployment config file (`app.pipecd.yaml`) + platform-specific files.

- For **Kubernetes**:
  - You will run a [helloworld](https://github.com/pipe-cd/pipecd/pkgs/container/helloworld) service.
  - Use [kubernetes/simple/](https://github.com/ca-dp/pipecd-tutorial/tree/main/src/deploy/kubernetes/simple). You do not need to edit.
- For **Google Cloud Run**:
  - You will run a [helloworld](https://github.com/pipe-cd/pipecd/pkgs/container/helloworld) service.
  - Use [cloudrun/simple/](https://github.com/ca-dp/pipecd-tutorial/tree/main/src/deploy/cloudrun/simple). You do not need to edit.
- For **Amazon ECS**:
  - You will run an nginx service.
  - Edit [ecs/simple/](https://github.com/ca-dp/pipecd-tutorial/tree/main/src/deploy/ecs/simple) as below.
    - `app.pipecd.yaml`: Edit `targetGroupArn`.
    - `servicedef.yaml`: Edit `cluster`, `securityGroups`, and `subnets`.
    - `taskdef.yaml`: Edit `executionRoleArn`.
- For **AWS Lambda**:
  - You will create a function of your own image.
  - Edit [lambda/simple/](https://github.com/ca-dp/pipecd-tutorial/tree/main/src/deploy/lambda/simple) as below.
    - `function.yaml`: Edit `role` and `image`.
- For **Terraform**:
  - You will generate a file on local.
  - Edit [terraform/simple/](https://github.com/ca-dp/pipecd-tutorial/tree/main/src/deploy/terraform/simple) as below.
    - `filename`: Specify any absolute path. A file will be generated here.


1-2. Commit and push the changes to remote.


## 2. Register the application

2-1. Go to the console. [http://localhost:8080](http://localhost:8080)

2-2. Click `+ ADD`.

![add-application](/images/deploy/application-add.png)

2-3. Enter values and click `SAVE`->`SAVE`.
   - `Piped`: Your Piped's Id
   - `Platform Provider`: The platform
   - `Application`: The application you configured in [1.](#1-prepare-config-files)

![add-application-input](/images/deploy/application-add-input.png)

2-4. If successful, you will see the dialog like the following image.

![application-is-added](/images/deploy/application-is-added.png)


## 3. Watch the first deployment

3-1. Go to the deployments page. [http://localhost:8080/deployments](http://localhost:8080/deployments)

3-2. Wait until a new deployment automatically appear. Then click it to see details.

> **Note**: You do not need to invoke a deployment by yourself since your Piped automatically starts it. **This is GitOps.**

![deployment-appear](/images/deploy/deployment-appear.png)


3-3. Wait until the status become `SUCCESS`/`FAILURE`. If it shows `FAILURE`, check the log in the page.

![deployment-deploying](/images/deploy/deployment-deploying.png)


3-4. When the status become `SUCCESS`, the deloyment is successfully finished.

![deployment-success](/images/deploy/deployment-success.png)

3-5. See your platform (Kubernetes cluster, cloud console, etc.) to check the result.
     


## 4. Edit the config and watch a new deployment

4-1. Edit the config file you deployed. (e.g. Change the image tag, sizing, etc.)

4-2. Commit and push the change to remote.

4-3. Go to the deployments page again. [http://localhost:8080/deployments](http://localhost:8080/deployments)

4-4. A new deployment will start in a few minutes.
> **Note**: That happened because your Piped detected a new commit that has not been deployed yet and triggered the new deployment.

> **Note**: We recommend deploying by above flow in order to keep your Git repository as Single Source of Truth even though you can deploy by a `SYNC` button on console.