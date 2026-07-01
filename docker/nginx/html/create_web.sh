#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")"

# Recreate output directory
rm -rf ./rehua
mkdir -p ./rehua

WEB_TAG="${1:-main}"
IMAGE="ghcr.io/bozhanl/rehua-web:${WEB_TAG}"

docker pull "$IMAGE"

docker run --rm -tu root --init -v ./rehua:/output "$IMAGE" bash -c 'npm ci && npm run build -w web && cp -r ./web/out/. /output'

docker image rm "$IMAGE"
