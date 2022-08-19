#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CODE_DIR="$(pwd)/src"

DOCKER_IMG_HASH="$(docker build -q ./docker)"
docker run -it --rm -v "$CODE_DIR:/code" -v "$DEST_DIR:/dest" "$DOCKER_IMG_HASH" "$@"