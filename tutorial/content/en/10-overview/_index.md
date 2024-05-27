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
   - is a stateless single binary component

### FAQ: Why PipeCD has Control Plane and Piped?

A. For scalability with security. 

PipeCD is designed for large organizations.

- If an agent does everything and a central component does not exist, each team needs to manage storage for storing states, which is not easy and reduces scalability.

- If a central component does everything and agents do not exist, the central component needs to access each team's environments with strong permissions, which is not secure.


## Flow of Deployment



## See Also

- [Doc > Overview](https://pipecd.dev/docs/overview/)
- [Doc > Concepts](https://pipecd.dev/docs/concepts/)