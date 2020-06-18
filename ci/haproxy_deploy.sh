#!/bin/sh

set -e

docker login -u gitlab-ci-token -p $CI_JOB_TOKEN $CI_REGISTRY
docker build -t registry.gitlab.com/allawaabdat/haproxy .
docker push registry.gitlab.com/allawaabdat/haproxy