#!/usr/bin/env bash

docker run -p 8889:8080 \
--mount type=bind,source=<complete path to>/delta_sharing_server.yml,target=/config/delta-sharing-server-config.yaml \
--mount type=bind,source=<complete path to core-site.xml with azure credentials>,target=/opt/docker/conf/core-site.xml
deltaio/delta-sharing-server:0.6.3 --config /config/delta-sharing-server-config.yaml