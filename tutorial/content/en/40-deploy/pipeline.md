---
title: "2. Customize the Pipeline"
weight: 2
description: "Deploy with a customized pipeline"
---

In this page, you will deploy a new application with a customized pipeline like Canary strategy.

The process is almost the same as [1. Simple](deploy.md). Only the config files (mainly `app.pipecd.yaml`) are different.

## 1. Prepare config files

1-1. Edit configuration files of one platform under [/src/deploy/](https://github.com/ca-dp/pipecd-tutorial/tree/main/src/deploy/) in your cloned repository as bellow.

- For **Kubernetes**:
  - Use [kubernetes/canary/](https://github.com/ca-dp/pipecd-tutorial/tree/main/src/deploy/kubernetes/canary). You do not need to edit.
- For **Google Cloud Run**:
  - Use [cloudrun/canary/](https://github.com/ca-dp/pipecd-tutorial/tree/main/src/deploy/cloudrun/canary). You do not need to edit.
- For **Amazon ECS**:
  - Edit [ecs/canary/](https://github.com/ca-dp/pipecd-tutorial/tree/main/src/deploy/ecs/canary) as below.
    - `app.pipecd.yaml`: Edit `targetGroupArn` of primary and canary.
    - `servicedef.yaml`: Copy from your [/src/deploy/ecs/simple/servicedef.yaml](https://github.com/ca-dp/pipecd-tutorial/blob/main/src/deploy/ecs/simple/servicedef.yaml) and rename `serviceName`.
    - `taskdef.yaml`: Copy from your [/src/deploy/ecs/simple/taskdef.yaml](https://github.com/ca-dp/pipecd-tutorial/blob/main/src/deploy/ecs/simple/taskdef.yaml) and rename `family`.
- For **AWS Lambda**:
  - Edit [lambda/canary/](https://github.com/ca-dp/pipecd-tutorial/tree/main/src/deploy/lambda/canary) as below.
    - `function.yaml`: Copy from your [/src/deploy/lambda/simple/function.yaml](https://github.com/ca-dp/pipecd-tutorial/blob/main/src/deploy/lambda/simple/function.yaml).
- For **Terraform**:
  - Edit [terraform/plan-approval-apply/](https://github.com/ca-dp/pipecd-tutorial/tree/main/src/deploy/terraform/plan-approval-apply) as below.
    - `main.tf`: Copy from your [/src/deploy/terraform/simple/main.tf](https://github.com/ca-dp/pipecd-tutorial/blob/main/src/deploy/terraform/simple/main.tf)
    - `terraform.tfvars`: Copy from your [/src/deploy/terraform/simple/terraform.tfvars](https://github.com/ca-dp/pipecd-tutorial/blob/main/src/deploy/terraform/simple/terraform.tfvars)
  - You can also use your own terraform files instead.


1-2. Commit and push the change to remote.

## 2. Register the application

The same flow as [1. Simple](deploy.md#2-register-the-application).

2-1. Go to the console. [http://localhost:8080](http://localhost:8080)

2-2. Click `+ ADD`.

2-3. Enter values and click `SAVE`->`SAVE`.
   - `Piped`: Your Piped's Id
   - `Platform Provider`: The platform
   - `Application`: The application you configured in [1.](#1-prepare-config-files)


## 3. Watch the new deployment

The same flow as [1. Simple](deploy.md#4-edit-the-config-and-watch-a-new-deployment).

3-1. Go to the deployments page. [http://localhost:8080/deployments](http://localhost:8080/deployments)

3-2. Wait until a new deployment automatically appear. Then click it to see details.

3-3. You will see the deployment with the customized pipeline.

![deployment-pipeline](/images/deploy/deployment-pipeline.png)

## See Also

- [Configuration examples](https://github.com/pipe-cd/examples)
- [Customizing deployment](https://pipecd.dev/docs/user-guide/managing-application/customizing-deployment/)
- [Configuration Reference > Stage options](https://pipecd.dev/docs/user-guide/configuration-reference/#stageoptions)
