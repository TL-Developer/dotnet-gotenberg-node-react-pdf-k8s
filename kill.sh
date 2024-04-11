#!/bin/bash

kubectl delete deployment dotnet-gotenberg-generate-pdf-deployment & \
kubectl delete deployment frontend-react-gotenberg-pdf-deployment & \
kubectl delete deployment gotenberg-deployment & \
kubectl delete deployment prometheus-grafana & \
kubectl delete deployment prometheus-kube-prometheus-operator & \
kubectl delete deployment prometheus-kube-state-metrics & \
kubectl delete svc dotnet-gotenberg-generate-pdf-service & \
kubectl delete svc frontend-react-gotenberg-pdf-service & \
kubectl delete svc gotenberg-service & \
kubectl delete svc alertmanager-operated & \
kubectl delete svc prometheus-grafana & \
kubectl delete svc prometheus-kube-prometheus-alertmanager & \
kubectl delete svc prometheus-kube-prometheus-operator & \
kubectl delete svc prometheus-kube-prometheus-prometheus & \
kubectl delete svc prometheus-kube-state-metrics & \
kubectl delete svc prometheus-operated & \
kubectl delete svc prometheus-kube-prometheus-kubelet & \
kubectl delete svc prometheus-prometheus-node-exporter & \
helm uninstall prometheus