---
title: "03. Deploy"
weight: 3
description: "Deploy an application and experience GitOps"
---


## 1. Create configuration files

1-1. Edit configuration files in your forked tutorial repository depending on your platform kind.

{{< tabpane >}}
{{< tab header="Kubernetes" >}}

{{< /tab >}}
{{< tab header="Cloud Run" >}}

{{< /tab >}}

{{< tab header="Amazon ECS" >}}

- app.pipecd.yaml

```yaml
apiVersion: xxx
Kind: ECSApp
```

- servicedef.yaml
- taskdef.yaml

{{< /tab >}}

{{< tab header="AWS Lambda" >}}

- app.pipecd.yaml
- function.yaml

{{< /tab >}}

{{< tab header="Terraform" >}}

- app.pipecd.yaml
- any .tf file to apply

{{< /tab >}}

{{< /tabpane >}}


1-2. Commit and push the changes.



## 2. Register an application

2-1. Go to the console. [http://localhost:8080](http://localhost:8080)

2-2. Click `+ ADD`.

2-3. Enter values and click `SAVE`->`SAVE`.
   - `Piped`: Your Piped's Id
   - `Platform Provider`: The platform
   - `Application`: The application you configured in [1.](#1-create-configuration-files)

2-4. If successful, you will see the dialog like the following image.

![](/images/ui/application-is-added.png)


## 3. Watch the first deployment

3-1. Go to the deployments page. [http://localhost:8080/deployments](http://localhost:8080/deployments)

3-2. A new deployment will automatically appear. Click it to see details.

> **Note**: You do not need to invoke a deployment by yourself since your Piped automatically starts it. **This is GitOps.**


3-3. Wait until the status become `SUCCESS`/`FAILURE`.
     If it shows `FAILURE`, check the log in the page.

3-4. When the status became `SUCCESS`, the deloyment is successfully finished.

3-5. See your platform(Kubernetes cluster or cloud console) to check the result.
     


## 4. Edit the config and watch a new deployment

4-1. Edit the config file you deployed. (e.g. Change the image tag, sizing, etc.)

4-2. Commit and push the change.

4-3. Go to the deployments page again. [http://localhost:8080/deployments](http://localhost:8080/deployments)

4-4. A new deployment will start in a few minutes.
> **Note**: That's because your Piped detected a new commit that has not been deployed yet and triggered the new deployment.
