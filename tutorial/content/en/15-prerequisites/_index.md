---
title: "Prerequisites"
weight: 15
description: "What you need in advance"
---



To perform this tutorial, you'll need the following:

- **Fork [the tutorial repository](https://github.com/ca-dp/pipecd-tutorial) and clone it to your local.**
  - You will edit it and use it as the deployment source.
- Docker Engine
- docker-compose

- At least one of the following. It depends on where to deploy.
  - for Kubernetes:
    - You have a Kubernetes cluster
    - You can connect the cluster with kubectl
  - for Google Cloud Run:
    - [TODO: WRITE HERE]
  - for Amazon ECS:
    - You can call [ECS APIs](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ecs/index.html) from your local to your AWS account.
    - You have all of: (i.e. all you need to create an ECS service)
      - a container image in the ECR Repository
      - an cluster of ECS
      - an ALB that an ECS service will receive traffic from
      - a target group that the ALB uses to traffic to an ECS service
      - two subnets where an ECS service will be placed
      - a security group to be attached to an ECS service
      - a task execution role which has [`AmazonECSTaskExecutionRolePolicy`](https://docs.aws.amazon.com/ja_jp/aws-managed-policy/latest/reference/AmazonECSTaskExecutionRolePolicy.html)
  - for AWS Lambda:
    - You can call [Lambda APIs](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lambda/index.html) from your local to your AWS account.
    - You have all of: (i.e. all you need to create a Lambda function)
      - a container image in the ECR Repository
      - function’s execution role
  - for Terraform:
    - You can execute [`terraform` commands](https://developer.hashicorp.com/terraform/cli/commands) from your local to your target environment(AWS, Google Cloud, etc.).

