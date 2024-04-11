#!/bin/bash

cd k8s && kubectl apply -f deployment.yml

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts & \
# helm repo update & \
helm install prometheus prometheus-community/kube-prometheus-stack &
kubectl port-forward svc/dotnet-gotenberg-generate-pdf-service 5000:5000 & \
kubectl port-forward svc/frontend-react-gotenberg-pdf-service 4200:4200 & \
kubectl port-forward svc/gotenberg-service 8000:8000 & \
kubectl port-forward svc/prometheus-grafana 3500:80 & \
kubectl port-forward svc/prometheus-kube-prometheus-prometheus 9090:9090 & \
echo "all project running, have fun!"