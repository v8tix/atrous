#!/usr/bin/env bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../configuration/const.sh"

docker run -t --rm --name "${IMAGE}" --hostname "${IMAGE}" -d "${IMAGE_TAG}"