## Aplicação para download arquivo PDF 100% rodando via servidor com docker, k8s, k6 para teste de carga e prometheus com grafana para monitoramento 

Gerador PDF = Gotenberg

Backend = .NET Core 8

Frontend = NodeJS + React

Monitoramento = Prometheus + Grafana

Teste de carga = K6

Container = Docker

## to run in host docker
host.docker.internal

## run all projects and watch
```docker-compose up```

## run all projects in background
```docker-compose up -d```

## projects running on localhost ports

gotenberg on port 8000
```
curl --location 'http://localhost:8000/forms/chromium/convert/url' \
--form 'url="http://host.docker.internal:4200/"'
```

backend on port 5000
```
curl --location 'http://localhost:5000/generate-pdf'
```

frontend on port 4200

grafana on port 3000

prometheus on port 9090

## Run all project on kubernetes on root
```./start.sh```

## Kill all project on kubernetes on root
```./kill.sh```

## Run each project on kubernetes
```cd k8s && kubectl apply -f namespace.yml```
```cd dotnet && kubectl apply -f deployment.yml```
```cd frontend-react && kubectl apply -f deployment.yml```
```cd gotenberg && kubectl apply -f deployment.yml```

## Port Forward each project
```cd dotnet && kubectl port-forward -n dotnet-gotenberg-node-react-pdf-k8s svc/dotnet-gotenberg-generate-pdf-service 5000:5000```
```cd frontend-react && kubectl port-forward -n dotnet-gotenberg-node-react-pdf-k8s svc/frontend-react-gotenberg-pdf-service 4200:4200```
```cd gotenberg && kubectl port-forward -n dotnet-gotenberg-node-react-pdf-k8s svc/gotenberg-service 8000:8000```

## images on docker hub
https://hub.docker.com/layers/liminha/dotnet-gotenberg-generate-pdf/latest/images/sha256-76c9183f3925cde02c337008f387f6f54e9f7372cd6c9eb34fa993459e0c8dd6?context=explore

https://hub.docker.com/layers/liminha/frontend-react-gotenberg-pdf/latest/images/sha256-5dd8003f77c3aa92989f4607c76df4110c359fac833df45e09ead065802039d0?context=explore

https://hub.docker.com/layers/liminha/gotenberg/latest/images/sha256-67b2ec071923cb6032c2598a0842bbb1cd75f0db813e16aebac3b23fdc394dce?context=explore