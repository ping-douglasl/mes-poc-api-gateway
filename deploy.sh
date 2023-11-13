#!/bin/bash

CURRENT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Deploy the app to k8s
kubectl apply --filename="$CURRENT_DIR/manifests" --overwrite