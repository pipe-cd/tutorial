---
title: "Prerequisites"
weight: 15
description: "What you need in advance"
---



To perform this tutorial, you'll need the following:

- **Fork [the tutorial repository](https://github.com/ca-dp/pipecd-tutorial) and clone it to your local.**

- Docker Engine
- docker-compose

- At least one of the following. It depends on where to deploy.
  - for Kubernetes:
    - You have a Kubernetes cluster
    - You can connect it with kubectl
  - for Google Cloud Run:
    - [TODO: WRITE HERE]
  - for Amazon ECS:
    - You can call [ECS APIs](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ecs/index.html) from your local to your AWS account.
  - for AWS Lambda:
    - You can call [Lambda APIs](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lambda/index.html) from your local to your AWS account.
  - for Terraform:
    - You can execute [`terraform` commands](https://developer.hashicorp.com/terraform/cli/commands) from your local to your target environment(AWS, Google Cloud, etc.).

