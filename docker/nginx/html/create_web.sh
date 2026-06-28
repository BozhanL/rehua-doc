#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")"

# Prevent rm error when ./rehua not exist
mkdir -p ./rehua
rm -r ./rehua
mkdir -p ./rehua

docker pull ghcr.io/bozhanl/rehua-web:main

docker run --rm -tu root --init -v ./rehua:/output ghcr.io/bozhanl/rehua-web:main bash -c 'npm ci && npm run build -w web && cp -r ./web/out/. /output'

docker image rm ghcr.io/bozhanl/rehua-web:main
