# 1. Setup Git Repository

In this page, before the installation, you will copy [the tutorial repository](https://github.com/pipe-cd/tutorial.git) into your local and GitHub.
It contains configs for the installation and deployments.

> [!NOTE]
> Do not `Fork` here to hide your configs from public.

![setup-git-repository](/images/install/setup-git-repo.svg)
<p align="center">Flow of preparing Git repositories</p>


1. Create a new empty **private** repository in your GitHub account. Any name is fine.

2. Clone the original repository into your local working directory.
    ```console
    git clone https://github.com/pipe-cd/tutorial.git
    ```

3. Push it to the remote private repository.
    ```console
    git remote add private <YOUR_PRIVATE_REPOSITORY_URL>
    git push -u private main
    ```


