# Local Architecture

## Status

proposed

## Context

There are several ways to install PipeCD and deploy with it.
We want to choose the easiest way for readers.
We must avoid troublesome prerequisites as possible.


## Decision

<![local architecture]()>

- Control Plane: docker-compose / kind
- Piped: single binary
  - docker container: many args for config/auth are required
- Platform Provider: user's own environments
- Config Repository: GitHub
  - local git repo: 
- Installation source: cloned repository
  - 




## Consequences

What becomes easier or more difficult to do because of this change?
```
