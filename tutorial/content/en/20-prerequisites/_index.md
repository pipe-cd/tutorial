---
title: "Prerequisites"
weight: 20
description: "What you need in advance"
---

To perform this tutorial, you'll need the following:

- [Docker Engine](https://docs.docker.com/engine/install/)
- [docker-compose](https://docs.docker.com/compose/install/)
- `git`: You can execute `git clone` and `git push` to your repositories on GitHub.
- SSH Key for GitHub: You can access GitHub by a SSH key.
  - Use your existing key or generate new one. See [GitHub Docs > Generating a new SSH Key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key).
  - Your PipeCD will use it to watch your repository on GitHub.
- At least one of the following. It depends on where you deploy.
  - for **Kubernetes**:
    - You have a Kubernetes cluster
    - You can connect the cluster with kubectl
  - for **Google Cloud Run**:
    - You can call Cloud Run APIs from you local to your Google Cloud project.
  - for **Amazon ECS**:
    - You can call [ECS APIs](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ecs/index.html) from your local to your AWS account.
    - You have all of (i.e. all you need to create an ECS service):
      - a ECS cluster
      - an ALB that the service will receive traffic from
      - two target groups that the ALB uses to traffic to the service
      - two subnets where the service will be placed
      - a security group which allows `HTTP:80` inbound from your local.
      - a task execution role which has [`AmazonECSTaskExecutionRolePolicy`](https://docs.aws.amazon.com/ja_jp/aws-managed-policy/latest/reference/AmazonECSTaskExecutionRolePolicy.html)
  - for **AWS Lambda**:
    - You can call [Lambda APIs](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lambda/index.html) from your local to your AWS account.
    - You have all of (i.e. all you need to create a Lambda function):
      - an image in your ECR Repository
      - function’s execution role
  - for **Terraform**:
    - You can execute [`terraform` commands](https://developer.hashicorp.com/terraform/cli/commands) from your local to your target environment(AWS, Google Cloud, etc.).
