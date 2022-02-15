#!/usr/bin/env bash

docker run -p 8889:8080 \
--mount type=bind,source=<complete path to>/delta_sharing_server.yml,target=/config/delta-sharing-server-config.yaml \
--mount type=bind,source=<complete path to google service account key>.json,target=/config/key.json \
--env GOOGLE_APPLICATION_CREDENTIALS="/config/key.json" \
deltaio/delta-sharing-server:0.4.0 --config /config/delta-sharing-server-config.yaml