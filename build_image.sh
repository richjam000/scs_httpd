#!/bin/bash
set -e
TAG="1.0"
IMAGE="gitlab.scsuk.net:5005/scs-systems/phase-1/scs_httpd:$TAG"
set -x
cp /etc/yum.repos.d/scs_repo.repo yum.repos.d
docker build -t "$IMAGE" .
docker push "$IMAGE"
set +x

