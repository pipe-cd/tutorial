---
title: "02. Piped"
weight: 2
description: "Run a Piped agent"
---

In this guide, you will run a Piped agent locally as a Docker container.
`

## Installation

1. Fork the examples repository of PipeCD as a deployment source.
   - Fork this: https://github.com/pipe-cd/examples
2. Create a Piped ID on the console
   1. Access the console on [http://localhost:8080](http://localhost:8080).
   2. Go to the Settings page via [the three dots menu on the upper right] > `Settings`.
    <img src="/images/30-local-run/20-piped/gotosetting.png">
   3. Click `ADD`.
    <img src="/images/30-local-run/20-piped/add.png">
   4. Enter any `Name` and `Description`, and then click `SAVE`.
    <img src="/images/30-local-run/20-piped/add-piped.png">
   5. You will see Piped's ID and Key. **You will use them in the next step.**
    <img src="/images/30-local-run/20-piped/registered.png">
3. Edit the [piped-config.yaml](https://github.com/ca-dp/pipecd-tutorial/src/03-local-run/02-piped/piped-config.yaml) as below.
   - `spec.pipedID`: `Piped Id` you got in 2.5.
   - `spec.pipedKeyData`: `Base64 Encoded Piped Key` you got in 2.5.
   - `spec.repositories[0].remote`: The URL of your repository you made in 1.

4. Run a Piped as a Docker container. [^1]

   ```console
   cd <The directory your piped-config.yaml exists>
   docker run -v ./piped-config.yaml:/etc/piped-config.yaml ghcr.io/pipe-cd/piped:v0.47.0 piped --insecure --config-file=/etc/piped-config.yaml
   ```

[^1]: `--insecure` option disables TLS of the communication from the Piped to the Control Plane. (cf. [Piped's Runtime Options](https://pipecd.dev/docs/user-guide/managing-piped/runtime-options/))

## Confirmation

1. Access the setting page on the console. [http://localhost:8080/settings/piped?project=control-plane-local](http://localhost:8080/settings/piped?project=control-plane-local)

    If successful, you will see a green mark(=Online) in the Name area of your Piped.
      <img src="/images/30-local-run/20-piped/piped-status.png">

    If it is not green, please wait for a few minutes.

