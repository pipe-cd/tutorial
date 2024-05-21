---
title: "1. Setup Git Repository"
weight: 1
description: "Setup repositories on local and GitHub"
---

Copy [the tutorial repository](https://github.com/ca-dp/pipecd-tutorial.git) into your local and GitHub account.
It contains configs for installing PipeCD and deployments.

> **Note**: Do not use Fork here so that you can hide the configs from public.

![setup-git-repository](/images/installation/setup-git-repo.png)

1. Create a new empty **private** repository in your GitHub account. Any name is fine.

2. Clone the tutorial repository into your local working directory.
    ```console
    git clone https://github.com/ca-dp/pipecd-tutorial.git
    ```

3. Push it to the private repository.
    ```console
    git remote add private <YOUR_PRIVATE_REPOSITORY_URL>
    git push -u private main
    ```


