# docker-gcp-sdk-plus

[![Actions Status](https://github.com/netserf/docker-gcp-sdk-plus/workflows/Docs/badge.svg)](https://github.com/netserf/docker-gcp-sdk-plus/actions)
[![Actions Status](https://github.com/netserf/docker-gcp-sdk-plus/workflows/Test/badge.svg)](https://github.com/netserf/docker-gcp-sdk-plus/actions)

A Debian-based Docker image with the Google Cloud SDK and some additional tools.

List of additional tools:

* [helm](https://helm.sh/)
* [kubectx / kubens](https://github.com/ahmetb/kubectx)

For more details on the base image, see the following:

* [GitHub - Google Cloud CLI Docker](https://github.com/GoogleCloudPlatform/cloud-sdk-docker)
* [GCP Docs - Installing Google Cloud CLI Docker image](https://cloud.google.com/sdk/docs/downloads-docker)
* [Docker Hub - Google Cloud CLI](https://hub.docker.com/r/google/cloud-sdk)

## Tags

* `latest`: Latest stable version of docker-gcp-sdk-plus image

## Usage

### How to build the image locally

```bash
docker build -t netserf/docker-gcp-sdk-plus:latest .
```

### How to pull the image from DockerHub

```bash
docker pull netserf/docker-gcp-sdk-plus:latest
```

### How to run the image locally (defaults to version details)

```bash
docker run netserf/docker-gcp-sdk-plus:latest
```

### How to run the image for interactive use

```bash
docker run netserf/docker-gcp-sdk-plus:latest /bin/bash
```

## Contributions

Pull requests are welcome. For major changes, please open an issue first to
discuss what you would like to change.

## License

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
