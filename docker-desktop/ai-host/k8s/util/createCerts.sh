#!/bin/bash

# Generate a private key
openssl genrsa -out ollama.key 2048

# Generate a self-signed certificate (replace with your actual domain)
openssl req -x509 -new -nodes -key ollama.key -sha256 -days 365 -out ollama.crt -subj "/CN=ollama.yourdomain.com"

# Encode the certificate
cat ollama.crt | base64 | tr -d '\n' > ollama.crt.base64

# Encode the key
cat ollama.key | base64 | tr -d '\n' > ollama.key.base64

echo "Certificate encoded to ollama.crt.base64"
echo "Key encoded to ollama.key.base64"