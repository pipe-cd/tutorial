---
title: "PipeCD Overview"
weight: 10
description: "Briefly understand an overview of PipeCD"
---

## What is PipeCD

PipeCD is an OSS for Continuous Delivery.

![pipecd-explanation](/images/overview/pipecd-explanation.png)

<p style="text-align: center;">
PipeCD - a GitOps style solution for Continuous Delivery
</p>

### 1. Deploy to several kinds of platforms
- Currently, PipeCD supports five types of deployment target
  - Kubernetes
  - Google Cloud Run
  - Amazon ECS
  - AWS Lambda
  - Terraform
- 

### 2. Progressive Delivery

- 

### 3. GitOps style
  
- 


See [GitOps Principles by OpenGitOps](https://opengitops.dev/#principles) for more.

## Why PipeCD?

### Unified

- You can use a unified CD tool for whichever platform you use
<!-- - Same deployment interface to deploy applications of any platform, including Kubernetes, Terraform, GCP Cloud Run, AWS Lambda, AWS ECS -->

### Faster & Safer development/delivery

- Progressive Delivery
- Analysis
<!-- - Insights show metrics like lead time, deployment frequency, MTTR and change failure rate to measure delivery performance
Automated deployment analysis to measure deployment impact based on metrics, logs, emitted requests
Automatically roll back to the previous state as soon as analysis or a pipeline stage fails -->


### Org

- Fit for large organizations
<!-- - Designed to manage thousands of cross-platform applications in multi-cloud for company scale but also work well for small projects -->

### Secure
<!-- 
- No deployment credentials are exposed or required outside the application cluster
- Credentials are not exposed outside the cluster and not saved in the Control Plane
- Piped makes only outbound requests and can run inside a restricted network
- Built-in secrets management -->


<!-- ### GitOps(??)

- Automatically detect configuration drifts.
-  -->








## Architecture: Control Plane and Agent Model

PipeCD is mainly made up of two components - Control Plane and Piped.

![architecture-overview](/images/overview/architecture-overview.png)

<p style="text-align: center;">
Architecture Overview
</p>

1. **Control Plane**
   1. provides the UI
   2. [is made up of five components](https://pipecd.dev/docs/user-guide/managing-controlplane/architecture-overview/)
   3. manages states 
2. **Piped**
   1. a deployment agent
   2. a single binary component. That means you can run a Piped anywhere.
   3. stateless


### Why PipeCD has Control Plane and Piped?
<span style='color:red'>TODO: Write here because it's strange for beginners why a CD tool has a Control Plane</span>

- Security
  - 
- Scalability in a large organization
   -
- UI??

## See Also

- [docs/overview](https://pipecd.dev/docs/overview/)
- [docs/concepts](https://pipecd.dev/docs/concepts/)