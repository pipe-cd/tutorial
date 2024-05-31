# 2. Deploy with a Customized Pipeline

In this page, you will deploy with a customized pipeline like Canary release.

_The process is almost the same as [1. Deploy Simply](01-simply.md). Only the config files (essentially only `app.pipecd.yaml`) are different._

## 1. Prepare config files

1-1. Edit configuration files of one platform under `/src/deploy/` in your cloned repository as bellow.

- For **Kubernetes**:
  - You will run a [helloworld](https://github.com/pipe-cd/pipecd/pkgs/container/helloworld) service by Canary release.
  - Use `kubernetes/canary/`. You do not need to edit.
- For **Google Cloud Run**:
  - You will run a [helloworld](https://github.com/pipe-cd/pipecd/pkgs/container/helloworld) service by Canary release.
  - Use `cloudrun/canary/`. You do not need to edit.
- For **Amazon ECS**:
  - You will run an nginx service by Canary release.
  - Edit `ecs/canary/` as below.
    - `app.pipecd.yaml`: Edit `targetGroupArn` of primary and canary.
    - `servicedef.yaml`: Copy from your `/src/deploy/ecs/simple/servicedef.yaml` and rename `serviceName`.
    - `taskdef.yaml`: Copy from your `/src/deploy/ecs/simple/taskdef.yaml` and rename `family`.
- For **AWS Lambda**:
  - You will create a function of your own image by Canary release.
  - Edit `lambda/canary/` as below.
    - `function.yaml`: Copy from your `/src/deploy/lambda/simple/function.yaml`] and rename `name`.
- For **Terraform**:
  - You will generate a file on local with plan->approval->apply pipeline.
  - Edit `terraform/plan-approval-apply/` as below.
    - `main.tf`: Edit `path` and `filename`.

1-2. Commit and push the change to remote.


## 2. Register the application

2-1. Go to the console. [http://localhost:8080](http://localhost:8080)

2-2. Click `+ ADD`.

2-3. Enter values and click `SAVE`->`SAVE`.
   - `Piped`: Your Piped's Id
   - `Platform Provider`: The platform
   - `Application`: The application you configured in [1.](#1-prepare-config-files)


## 3. Watch the first deployment

> [!NOTE]
> If you deploy **Terraform**, skip to [4-3.](#4-edit-the-config-and-watch-the-customized-deployment). 
> For other platforms, you need to follow below and deploy twice because a customized pipeline is not used in the first deployment.

3-1. Go to the deployments page. [http://localhost:8080/deployments](http://localhost:8080/deployments)

3-2. Wait until a new deployment appears and finishes.

## 4. Edit the config and watch the customized deployment

4-1. Edit the config file you deployed. (e.g. Change the image tag, sizing, etc.)

4-2. Commit and push the change to remote.

4-3. Go to the deployments page again. [http://localhost:8080/deployments](http://localhost:8080/deployments)

4-4. A new deployment with the customized pipeline will start in a few minutes.

![deployment-pipeline](/images/deploy/deployment-pipeline.png)
<p align="center">Deploying an ECS application with Canary strategy</p>

## See Also

- [Configuration examples](https://github.com/pipe-cd/examples)
- [Customizing deployment](https://pipecd.dev/docs/user-guide/managing-application/customizing-deployment/)
- [Configuration Reference > Stage options](https://pipecd.dev/docs/user-guide/configuration-reference/#stageoptions)

---

[< Previous: 1. Deploy Simply](01-simply.md)
