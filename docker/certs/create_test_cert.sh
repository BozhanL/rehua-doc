#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")"

mkdir -p nginx api mongo

# Generate CA
openssl ecparam -name prime256v1 -genkey -noout -out ca.key

openssl req -new -x509 -key ca.key -out ca.pem -days 36500 -sha256 \
  -subj "/C=NZ/CN=rehua" \
  -addext "basicConstraints = critical, CA:true" \
  -addext "keyUsage = critical, digitalSignature, cRLSign, keyCertSign"

# Generate localhost https
cp ca.pem nginx/
openssl ecparam -name prime256v1 -genkey -noout -out nginx/localhost.key

openssl req -new -key nginx/localhost.key \
  -subj "/" \
  -addext "basicConstraints = critical, CA:false" \
  -addext "subjectAltName = DNS:localhost, IP:127.0.0.1" \
  -addext "keyUsage = critical, digitalSignature" \
  -addext "extendedKeyUsage = clientAuth, serverAuth" \
  | \
openssl x509 -req -in - -CA ca.pem -CAkey ca.key \
  -copy_extensions copyall -out nginx/localhost.pem -days 3650

cat nginx/localhost.pem ca.pem > nginx/fullchain.pem
cat nginx/localhost.key nginx/localhost.pem ca.pem > nginx/fullchain_with_key.pem

# Generate api https
cp ca.pem api/
openssl ecparam -name prime256v1 -genkey -noout -out api/api.key

openssl req -new -key api/api.key \
  -subj "/" \
  -addext "basicConstraints = critical, CA:false" \
  -addext "subjectAltName = DNS:api" \
  -addext "keyUsage = critical, digitalSignature, keyEncipherment, keyAgreement" \
  -addext "extendedKeyUsage = clientAuth, serverAuth" \
  | \
openssl x509 -req -in - -CA ca.pem -CAkey ca.key \
  -copy_extensions copyall -out api/api.pem -days 3650

cat api/api.pem ca.pem > api/fullchain.pem
cat api/api.key api/api.pem ca.pem > api/fullchain_with_key.pem

# Generate mongo tls
cp ca.pem mongo/
openssl ecparam -name prime256v1 -genkey -noout -out mongo/mongo.key

openssl req -new -key mongo/mongo.key \
  -subj "/" \
  -addext "basicConstraints = critical, CA:false" \
  -addext "subjectAltName = DNS:mongo" \
  -addext "keyUsage = critical, digitalSignature, keyEncipherment, keyAgreement" \
  -addext "extendedKeyUsage = clientAuth, serverAuth" \
  | \
openssl x509 -req -in - -CA ca.pem -CAkey ca.key \
  -copy_extensions copyall -out mongo/mongo.pem -days 3650

cat mongo/mongo.pem ca.pem > mongo/fullchain.pem
cat mongo/mongo.key mongo/mongo.pem ca.pem > mongo/fullchain_with_key.pem
