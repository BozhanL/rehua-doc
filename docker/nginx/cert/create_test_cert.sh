#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")"

openssl ecparam -name prime256v1 -genkey -noout -out localhost.key

openssl req -new -x509 -key localhost.key -out localhost.cer -days 365 -sha256 \
  -subj "/C=US/ST=State/L=City/O=Organization/OU=Department/CN=localhost" \
  -addext "subjectAltName = DNS:localhost, IP:127.0.0.1"
