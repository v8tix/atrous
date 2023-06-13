#!/usr/bin/env bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. "${dir}/../configuration/const.sh"
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd "${dir}" || exit

docker build --no-cache -t "${IMAGE_TAG}" .
