---
title: "Mechanism Overview"
weight: 10
description: "Briefly understand the essential mechanism of PipeCD"
---

In this page, you will learn about the essential mechanism of PipeCD.

## Architecture Overview

PipeCD is made up of two components - **Control Plane** and **Piped (Agent)**.

![architecture-overview](/images/overview/architecture-role.png)
<p class="caption">Architecture Overview</p>

**1. Control Plane**
   - stores states (e.g. deployment status, log)
   - provides the console UI

**2. Piped (Agent)**
   - plans & executes deployments
   - sends states to Control Plane
   - is a stateless single binary component. So it's easy to run and manage.

### FAQ: Why PipeCD has Control Plane and Agent?

**A. For scalability in a large organization with security.**

- What if an agent does everything?

  -> Each team would need to manage storage for states, which is difficult and decreases scalability.

- What if a central component does everything?

  -> A central component would access each team's environments with strong permissions, which is not secure.

![scalability in a organization](/images/overview/architecture-organization.png)
<p class="caption">Scalability in a organization</p>

## See Also

- [Doc > Overview](https://pipecd.dev/docs/overview/)
- [Doc > Concepts](https://pipecd.dev/docs/concepts/)