#!/bin/bash

kubectl apply -f https://github.com/kubernetes-sigs/gateway-api/releases/download/v0.8.1/standard-install.yaml
kubectl apply -f https://github.com/nginxinc/nginx-gateway-fabric/releases/download/v1.0.0/crds.yaml
kubectl apply -f https://github.com/nginxinc/nginx-gateway-fabric/releases/download/v1.0.0/nginx-gateway.yaml
kubectl apply -f https://raw.githubusercontent.com/nginxinc/nginx-gateway-fabric/v1.0.0/deploy/manifests/service/loadbalancer.yaml

CURRENT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Deploy the app to k8s
kubectl apply --filename="$CURRENT_DIR/manifests" --overwrite