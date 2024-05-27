---
title: "Overview"
weight: 10
description: "Briefly understand an overview of PipeCD"
---

In this page, you will understand important mechanisms of PipeCD.

## Architecture Overview

PipeCD is made up of two components - **Control Plane** and **Piped Agent**.

![architecture-overview](/images/overview/architecture-overview.png)
<p class="caption">Architecture Overview</p>

**1. Control Plane**
   - stores states (e.g. deployment statuses)
   - provides the console UI

**2. Piped Agent**
   - plans & executes deployments
   - is a stateless single binary component. So it's easy to run and manage.

### FAQ: Why PipeCD has both Control Plane and Piped?

A. For scalability in large organizations with security.

- What if a Piped does everything?

  -> If so, each team needs to manage storage for states on a Piped, which is difficult and decreases scalability.

- What if a Control Plane does everything?

  -> If so, a Control Plane needs to access each team's environments with strong permissions, which is not secure.


## Flow of Deployment



## See Also

- [Doc > Overview](https://pipecd.dev/docs/overview/)
- [Doc > Concepts](https://pipecd.dev/docs/concepts/)