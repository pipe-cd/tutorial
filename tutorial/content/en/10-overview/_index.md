---
title: "Overview"
weight: 10
description: "Briefly understand an overview of PipeCD"
---

## What is PipeCD

PipeCD is an OSS for Continuous Delivery.

![pipecd-explanation](/images/overview/pipecd-explanation.png)

<p style="text-align: center;">
PipeCD - a GitOps style solution for Continuous Delivery
</p>

PipeCD's main characteristics are as below.

**1. Deploy to several kinds of platforms**
- Currently, PipeCD supports five kinds of deployment target
  - Kubernetes
  - Google Cloud Run
  - Amazon ECS
  - AWS Lambda
  - Terraform

**2. Progressive Delivery**

- 

**3. GitOps style**

- 

<!-- - Automatically detect configuration drifts. -->
- See [GitOps Principles by OpenGitOps](https://opengitops.dev/#principles) for more.

## Why PipeCD

Here are the main reasons why PipeCD is useful.

**Unified**

- You can use one unified CD tool for several platforms.

**Faster & safer delivery**

- PipeCD can automatically judge whether to continue or rollback a deployment by [the Analysis feature](https://pipecd.dev/docs/user-guide/managing-application/customizing-deployment/automated-deployment-analysis/).
- Progressive Delivery

**Secure**

- Credentials of application environments are not exposed outside.
- A Piped agent can run inside a restricted network because it has outbound requests but no inbound.


**Fit for large organizations too**

<!-- - Designed to manage thousands of cross-platform applications in multi-cloud for company scale but also work well for small projects -->




## Architecture

PipeCD is mainly made up of two components - **Control Plane** and **Piped**.

![architecture-overview](/images/overview/architecture-overview.png)

<p style="text-align: center;">
Architecture Overview
</p>

**1. Control Plane**
   1. provides the UI
   2. [is made up of five components](https://pipecd.dev/docs/user-guide/managing-controlplane/architecture-overview/)
   3. manages states

**2. Piped**
   1. a deployment agent
   2. a single binary component. So you can run a Piped anywhere.
   3. stateless


<!-- ### Why PipeCD has Control Plane and Piped?
<span style='color:red'>TODO: Write here because it's strange for beginners why a CD tool has a Control Plane</span>

- Security
  - xxx
- Scalability in a large organization
  - xxx
- UI?? -->

## See Also

- [docs/overview](https://pipecd.dev/docs/overview/)
- [docs/concepts](https://pipecd.dev/docs/concepts/)