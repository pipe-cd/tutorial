# Contributing to the Tutorial

TODO: We should add some sections for contributors.

## Intended Readers

In order to clarify the target readers and simplify the contents, we assume thier knowledge as below:

- **Required** (otherwise they would not be interested in PipeCD):
  - what's PipeCD
  - use of Git
  - use of Container
  - the concept of CI/CD
  - experience at least one of Kubernetes/CloudRun/ECS/Lambda/Terraform

- **Not Required** (the tutorial will explain):
  - how PipeCD works
  - what's GitOps
  - what's Progressive Delivery

## Repository Structure

- `content/`: Markdown files of the contents.
  - `en/`: English contents.
  - `ja/`: Japanese contents. This has the same structure as `en/`. (coming soon?)
- `hack`: util commands. not for users.
- `images`: Images in the tutorial.
- `src/`: The configuration sources used in the tutorial.

