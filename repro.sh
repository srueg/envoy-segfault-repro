#!/usr/bin/env bash

set -euo pipefail

ln -sf ecds.orig.yaml ecds.yaml

envoy -l debug -c ./envoy.yaml &

sleep 2

(
    for i in {1..10000}; do
        curl -s localhost:8080 >/dev/null &
    done
) &

sleep 1

ln -s ecds.new.yaml new
mv new ecds.yaml

wait
