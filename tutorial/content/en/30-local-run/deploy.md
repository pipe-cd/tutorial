---
title: "03. Deploy"
weight: 3
description: "Deploy an application and experiment GitOps"
---


## 1. Create configuration files

<span style='color:red'>TODO: How to write multiple files in each tab?</span>

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




## 2. Register an application

1. Go to the console. [http://localhost:8080](http://localhost:8080)
2. `ADD`
3. 

## 3. Confirm the first deployment

1. Go to the deployments page. [http://localhost:8080/deployments](http://localhost:8080/deployments)
2. A new deployment will appear. Click it to see details.
3. 



## 4. Edit the config and deploy automatically

1. Edit the config


{{< tabpane >}}
{{< tab header="Kubernetes" >}}

{{< /tab >}}

{{< /tabpane >}}

2. Commit and push the change.

3. Go to the deployments page. [http://localhost:8080/deployments](http://localhost:8080/deployments)
4. A new deployment will start in a few minutes. 
   That's because your Piped detected a new commit that has not been deployed yet and triggered the deployment.
