#!/bin/bash

set -e

export AWS_REGION=us-east-1
export AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}
export AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}

IMAGE=025066240744.dkr.ecr.us-east-1.amazonaws.com/podman-static-repo:latest

aws ecr get-login-password --region $AWS_REGION | podman login --username AWS --password-stdin $IMAGE

podman stop my-static-site || true
podman rm my-static-site || true

podman pull $IMAGE
podman run -d --name my-static-site -p 8080:80 $IMAGE

echo "✅ Deployment complete."
