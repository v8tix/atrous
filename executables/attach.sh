#!/usr/bin/env bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../configuration/const.sh"

docker exec -it "${IMAGE}" bash