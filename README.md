# Minimal Environment for `pip-compile`

[![master Build Status](https://travis-ci.org/Midnighter/pip-compile.svg?branch=master)](https://travis-ci.org/Midnighter/pip-compile)
[![Docker image pulls](https://img.shields.io/docker/pulls/midnighter/pip-compile)](https://cloud.docker.com/repository/docker/midnighter/pip-compile/)
[![License](https://img.shields.io/badge/license-Apache--2.0-blueviolet)](https://opensource.org/licenses/Apache-2.0)

A minimal [Docker image](Dockerfile) that provides a Python environment with
[`pip-tools`](https://pypi.org/project/pip-tools/) in order to lock requirements
files.

## Usage

Simply mount your requirements file to `/opt` and run the container. The [Docker
entrypoint](https://docs.docker.com/engine/reference/builder/#entrypoint) is
`pip-compile --verbose --generate-hashes`, for example,

```
docker run --rm --mount "source=.,target=/opt,type=bind" midnighter/pip-compile:3.7-alpine3.10 requirements.in
```

This will create a corresponding compiled `.txt` file in the mounted directory;
in this example `./requirements.txt`.

## Python Environments

Images are generated for the following environments. Please [open an
issue](https://github.com/Midnighter/pip-compile/issues/new) if you require
others.

| Tag | Python | Distribution |
| --- | ------ | ------------ |
| 3.6-alpine3.10 | 3.6 | [Alpine Linux 3.10](https://www.alpinelinux.org/) |
| 3.7-alpine3.10 | 3.7 | [Alpine Linux 3.10](https://www.alpinelinux.org/) |

## Copyright

* Copyright © 2019, Moritz E. Beber. All rights reserved.
* Free software licensed under the [Apache Software License 2.0](LICENSE).
