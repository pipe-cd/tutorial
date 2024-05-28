---
title: "1. Setup Git Repository"
weight: 1
description: "Setup repositories on local and GitHub"
---

In this page, before the installation, you will copy [the tutorial repository](https://github.com/ca-dp/pipecd-tutorial.git) into your local and GitHub.
It contains configs for the installation and deployments.

> **Note**: Do not `Fork` here to hide your configs from public.

![setup-git-repository](/images/installation/setup-git-repo.png)
<p class="caption">Flow of preparing Git repositories</p>


1. Create a new empty **private** repository in your GitHub account. Any name is fine.

2. Clone the original repository into your local working directory.
    ```console
    git clone https://github.com/ca-dp/pipecd-tutorial.git
    ```

3. Push it to the remote private repository.
    ```console
    git remote add private <YOUR_PRIVATE_REPOSITORY_URL>
    git push -u private main
    ```


