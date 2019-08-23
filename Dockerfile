# Copyright (c) 2019, Moritz E. Beber. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ARG TAG

FROM python:${TAG}

ENV PYTHONUNBUFFERED=1

WORKDIR /opt

RUN set -eux \
    && apk add --no-cache build-base ca-certificates libffi-dev openssl-dev \
    && pip install --upgrade pip setuptools wheel pip-tools \
    && rm -rf /root/.cache/pip

ENTRYPOINT ["pip-compile", "--verbose", "--generate-hashes"]
