#!/bin/bash
set -e
TAG="2.0"
IMAGE="gitlab.scsuk.net:5005/scs-systems/phase-2/scs-httpd:$TAG"
set -x
docker build --rm -t "$IMAGE" .
docker push "$IMAGE"
set +x
