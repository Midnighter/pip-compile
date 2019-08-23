# Minimal Environment for `pip-compile`

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

Images are generated for the following environments. Please [open an issue]() if
you require others.

| Tag | Python | Distribution |
| --- | ------ | ------------ |
| 3.6-alpine3.10 | 3.6 | [Alpine Linux 3.10](https://www.alpinelinux.org/) |
| 3.7-alpine3.10 | 3.7 | [Alpine Linux 3.10](https://www.alpinelinux.org/) |

## Copyright

* Copyright © 2019, Moritz E. Beber. All rights reserved.
* Free software licensed under the [Apache Software License 2.0](LICENSE).