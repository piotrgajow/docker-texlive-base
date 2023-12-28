#!/usr/bin/env bash

REPO=piotrgajow/texlive-base
ID=$(git rev-parse HEAD)

echo ${DOCKER_TOKEN} | docker login -u ${DOCKER_USER} --password-stdin

docker build -t "${REPO}:${ID}" -t "${REPO}:latest" .

docker push "${REPO}:${ID}"
docker push "${REPO}:latest"
