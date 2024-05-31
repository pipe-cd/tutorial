# Mechanism Overview

In this page, you will learn about the essential mechanism of PipeCD.

## Architecture Overview

PipeCD is made up of two components - **Control Plane** and **Piped (Agent)**.

![architecture-overview](/images/overview/architecture-role.svg)
<p align="center">Architecture overview</p>

**1. Control Plane**
   - stores states (e.g. deployment status, log)
   - provides the console UI

**2. Piped (Agent)**
   - plans & executes deployments
   - sends states to Control Plane periodically
   - is a stateless single binary component. So it's easy to run and manage.

### FAQ: Why PipeCD has Control Plane and Agent?

**A. For scalability in a organization with security.**

- What if an agent does everything?

  -> Each team would need to manage storage for states, which is difficult and decreases scalability.

- What if a central component does everything?

  -> A central component would access each team's environments with strong permissions, which is not secure.

![scalability in a organization](/images/overview/architecture-organization.svg)
<p align="center">Scalability in a organization</p>

## See Also

- [Docs > Overview](https://pipecd.dev/docs/overview/)
- [Docs > Concepts](https://pipecd.dev/docs/concepts/)

---

[Next: Prerequisites >](../20-prerequisites/README.md)
