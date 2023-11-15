kubectl delete -f https://github.com/nginxinc/nginx-gateway-fabric/releases/download/v1.0.0/nginx-gateway.yaml
kubectl delete -f https://github.com/nginxinc/nginx-gateway-fabric/releases/download/v1.0.0/crds.yaml
kubectl delete -f https://github.com/kubernetes-sigs/gateway-api/releases/download/v0.8.1/standard-install.yaml

CURRENT_DIR="$(cd "$(dirname "$0")" && pwd)"

kubectl delete --filename="$CURRENT_DIR/manifests" --overwrite
