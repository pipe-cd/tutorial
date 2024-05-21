---
title: "Prerequisites"
weight: 20
description: "What you need in advance"
---

To perform this tutorial, you need the following:

- [docker-compose](https://docs.docker.com/compose/install/): You can execute `docker-compose up`.
- `git`: You can execute `git clone` and `git push` to your repositories on GitHub.
- At least one of the following. It depends on where you deploy.
  - for **Kubernetes**:
    - You have a Kubernetes cluster.
    - You can connect the cluster with kubectl.
  - for **Google Cloud Run**:
    - You can call Cloud Run APIs from you local to your Google Cloud project.
  - for **Amazon ECS**:
    - You can call APIs of [ECS](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ecs/index.html) and [ELBv2](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/elbv2/index.html) from your local to your AWS account.
    - You have all of (i.e. all you need to create an ECS service):
      - an ECS cluster
      - an ELB that the service will receive traffic from
      - two target groups that the ELB routes traffic to the service
      - two subnets where the service will be placed
      - a security group which allows `HTTP:80` inbound from your local
      - a task execution role which has [`AmazonECSTaskExecutionRolePolicy`](https://docs.aws.amazon.com/ja_jp/aws-managed-policy/latest/reference/AmazonECSTaskExecutionRolePolicy.html). See [here](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_execution_IAM_role.html).
  - for **AWS Lambda**:
    - You can call APIs of [Lambda](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lambda/index.html) from your local to your AWS account.
    - You have all of (i.e. all you need to create a Lambda function):
      - an image in your ECR Repository
      - function’s execution role
  - for **Terraform**:
    - You can execute [`terraform` commands](https://developer.hashicorp.com/terraform/cli/commands) from your local to your target environment(AWS, Google Cloud, etc.).
