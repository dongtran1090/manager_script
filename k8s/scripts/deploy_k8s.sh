#!/bin/bash
set -e

IMAGE="$1"

kubectl --kubeconfig=/root/.kube/proxy-config apply -f k8s/namespace.yaml
sed "s|__IMAGE__|$IMAGE|g" k8s/deployment.yaml | kubectl --kubeconfig=/root/.kube/proxy-config apply -f -
kubectl --kubeconfig=/root/.kube/proxy-config apply -f k8s/service.yaml
kubectl --kubeconfig=/root/.kube/proxy-config rollout status deployment/demo-app -n demo --timeout=180s
kubectl --kubeconfig=/root/.kube/proxy-config get all -n demo