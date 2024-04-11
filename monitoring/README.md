# Install Prometheus with Helm

https://helm.sh/docs/intro/install/

https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack

```
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus prometheus-community/kube-prometheus-stack
```

# GRAFANA LOGIN
admin
prom-operator

# Dashboard Grafana
Pod Requests and Limits - 11673