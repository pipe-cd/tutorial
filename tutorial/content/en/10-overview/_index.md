---
title: "Overview"
weight: 10
description: "Briefly understand an overview of PipeCD"
---

In this page, you will understand important mechanisms of PipeCD.

## Architecture Overview

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

## Flow of Deployment



## See Also

- [Doc > Overview](https://pipecd.dev/docs/overview/)
- [Doc > Concepts](https://pipecd.dev/docs/concepts/)