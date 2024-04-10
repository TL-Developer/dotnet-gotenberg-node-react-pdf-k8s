# dotnet-gotenberg-node-react-pdf-k8s
Aplicação para download de PDF 100% no servidor rodando cada um com 3 replicas no Kubernetes

App .NET Core 8
App Gotenberg
App NodeJS
App React

# to run in host docker
host.docker.internal

# run all projects and watch
```docker-compose up```

# run all projects in background
```docker-compose up -d```

# projects running on localhost ports
gotenberg on port 8000
frontend on port 4200
backend on port 5000

# images on docker hub
https://hub.docker.com/layers/liminha/dotnet-gotenberg-generate-pdf/latest/images/sha256-76c9183f3925cde02c337008f387f6f54e9f7372cd6c9eb34fa993459e0c8dd6?context=explore
https://hub.docker.com/layers/liminha/frontend-react-gotenberg-pdf/latest/images/sha256-5dd8003f77c3aa92989f4607c76df4110c359fac833df45e09ead065802039d0?context=explore
https://hub.docker.com/layers/liminha/gotenberg/latest/images/sha256-67b2ec071923cb6032c2598a0842bbb1cd75f0db813e16aebac3b23fdc394dce?context=explore