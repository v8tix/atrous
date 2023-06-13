#!/usr/bin/env bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. "${dir}/../configuration/const.sh"

DOCKER_ACCOUNT="v8tix"
DOCKER_TAG="${DOCKER_ACCOUNT}/${IMAGE_TAG}"
docker tag "${IMAGE_TAG}" "${DOCKER_TAG}"
docker push "${DOCKER_TAG}"