# Minimal Environment for `pip-compile`

[![Docker Image CI](https://github.com/Midnighter/pip-compile/workflows/Docker%20Image%20CI/badge.svg?branch=stable)](https://github.com/Midnighter/pip-compile)
[![Docker image pulls](https://img.shields.io/docker/pulls/midnighter/pip-compile)](https://cloud.docker.com/repository/docker/midnighter/pip-compile/)
[![License](https://img.shields.io/badge/license-Apache--2.0-blueviolet)](https://opensource.org/licenses/Apache-2.0)

A minimal Docker image that provides a Python environment with
[`pip-tools`](https://pypi.org/project/pip-tools/) in order to lock requirements
files.

## Usage

Simply mount your requirements file to `/opt/requirements` and run the
container.  The [Docker
entrypoint](https://docs.docker.com/engine/reference/builder/#entrypoint) is
`pip-compile --generate-hashes`, for example,

```
docker run --rm \
    --mount "source=${PWD},target=/opt/requirements,type=bind" \
    midnighter/pip-compile:3.8-alpine3.12 \
    --upgrade --verbose requirements.in
```

This will create a corresponding compiled `.txt` file in the mounted directory;
in this example `./requirements.txt`.

## Python Environments

Images are generated for the following environments. Please [open an
issue](https://github.com/Midnighter/pip-compile/issues/new) if you require
others.

| Tag | Python | Distribution |
| --- | ------ | ------------ |
| 3.8-alpine3.12 | 3.8 | [Alpine Linux 3.12](https://www.alpinelinux.org/) |
| 3.8-slim-buster | 3.8 | [Debian Buster](https://www.debian.org/) |

## Copyright

* Copyright © 2019, Moritz E. Beber.
* Free software licensed under the [Apache Software License 2.0](LICENSE).
