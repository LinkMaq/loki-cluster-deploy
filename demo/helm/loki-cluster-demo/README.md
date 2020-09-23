# loki-cluster-demo

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square)

Deploy Loki Cluster, only for demo.

```
helm template --name stable --namespace <your_namespace> . - | kubectl apply -f -
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| global.configmaps[0] | string | `"redis.conf"` |  |
| global.name | string | `"loki-cluster-demo"` |  |
| loki-cassandra.cassandra_password | string | `"cassandra"` |  |
| loki-cassandra.fullnameOverride | string | `"loki-cassandra"` |  |
| loki-cassandra.image.pullPolicy | string | `"IfNotPresent"` |  |
| loki-cassandra.image.repository | string | `"bitnami/cassandra:3-debian-10"` |  |
| loki-cassandra.nameOverride | string | `"loki-cassandra"` |  |
| loki-cassandra.persistence[0].accessMode | string | `"ReadWriteOnce"` |  |
| loki-cassandra.persistence[0].mount_path | string | `"/bitnami"` |  |
| loki-cassandra.persistence[0].name | string | `"data"` |  |
| loki-cassandra.persistence[0].size | string | `"5Gi"` |  |
| loki-cassandra.persistence[0].storageClass | string | `"local-path"` |  |
| loki-cassandra.resources.limits.cpu | string | `"1"` |  |
| loki-cassandra.resources.limits.memory | string | `"10Gi"` |  |
| loki-cassandra.resources.requests.cpu | string | `"500m"` |  |
| loki-cassandra.resources.requests.memory | string | `"8Gi"` |  |
| loki-cassandra.svcNameOverride | string | `"loki-cassandra"` |  |
| loki-consul.CONSUL_BIND_INTERFACE | string | `"eth0"` |  |
| loki-consul.fullnameOverride | string | `"loki-consul"` |  |
| loki-consul.image.pullPolicy | string | `"IfNotPresent"` |  |
| loki-consul.image.repository | string | `"consul:1.7.8"` |  |
| loki-consul.nameOverride | string | `"loki-consul"` |  |
| loki-consul.persistence[0].accessMode | string | `"ReadWriteOnce"` |  |
| loki-consul.persistence[0].mount_path | string | `"/consul/data"` |  |
| loki-consul.persistence[0].name | string | `"data"` |  |
| loki-consul.persistence[0].size | string | `"1Gi"` |  |
| loki-consul.persistence[0].storageClass | string | `"local-path"` |  |
| loki-consul.resources.limits.cpu | string | `"1"` |  |
| loki-consul.resources.limits.memory | string | `"1Gi"` |  |
| loki-consul.resources.requests.cpu | string | `"200m"` |  |
| loki-consul.resources.requests.memory | string | `"256Mi"` |  |
| loki-consul.svcNameOverride | string | `"loki-consul"` |  |
| loki-distributor.fullnameOverride | string | `"loki-distributor"` |  |
| loki-distributor.image.pullPolicy | string | `"IfNotPresent"` |  |
| loki-distributor.image.repository | string | `"grafana/loki:1.6.0"` |  |
| loki-distributor.nameOverride | string | `"loki-distributor"` |  |
| loki-distributor.replicaCount | int | `3` |  |
| loki-distributor.resources.limits.cpu | string | `"1"` |  |
| loki-distributor.resources.limits.memory | string | `"1Gi"` |  |
| loki-distributor.resources.requests.cpu | string | `"200m"` |  |
| loki-distributor.resources.requests.memory | string | `"256Mi"` |  |
| loki-distributor.svcNameOverride | string | `"loki-distributor"` |  |
| loki-gateway.fullnameOverride | string | `"loki-gateway"` |  |
| loki-gateway.image.pullPolicy | string | `"IfNotPresent"` |  |
| loki-gateway.image.repository | string | `"nginx:1.15.1-alpine"` |  |
| loki-gateway.nameOverride | string | `"loki-gateway"` |  |
| loki-gateway.replicaCount | int | `2` |  |
| loki-gateway.resources.limits.cpu | string | `"1"` |  |
| loki-gateway.resources.limits.memory | string | `"2Gi"` |  |
| loki-gateway.resources.requests.cpu | string | `"200m"` |  |
| loki-gateway.resources.requests.memory | string | `"256Mi"` |  |
| loki-gateway.svcNameOverride | string | `"loki-gateway"` |  |
| loki-ingester.fullnameOverride | string | `"loki-ingester"` |  |
| loki-ingester.image.pullPolicy | string | `"IfNotPresent"` |  |
| loki-ingester.image.repository | string | `"grafana/loki:1.6.0"` |  |
| loki-ingester.nameOverride | string | `"loki-ingester"` |  |
| loki-ingester.replicaCount | int | `3` |  |
| loki-ingester.resources.limits.cpu | string | `"1"` |  |
| loki-ingester.resources.limits.memory | string | `"1Gi"` |  |
| loki-ingester.resources.requests.cpu | string | `"200m"` |  |
| loki-ingester.resources.requests.memory | string | `"256Mi"` |  |
| loki-ingester.svcNameOverride | string | `"loki-ingester"` |  |
| loki-minio.access_key | string | `"key123456"` |  |
| loki-minio.fullnameOverride | string | `"loki-minio"` |  |
| loki-minio.image.pullPolicy | string | `"IfNotPresent"` |  |
| loki-minio.image.repository | string | `"minio/minio:RELEASE.2020-09-21T22-31-59Z"` |  |
| loki-minio.nameOverride | string | `"loki-minio"` |  |
| loki-minio.persistence[0].accessMode | string | `"ReadWriteOnce"` |  |
| loki-minio.persistence[0].mount_path | string | `"/data"` |  |
| loki-minio.persistence[0].name | string | `"data"` |  |
| loki-minio.persistence[0].size | string | `"10Gi"` |  |
| loki-minio.persistence[0].storageClass | string | `"local-path"` |  |
| loki-minio.resources.limits.cpu | string | `"1"` |  |
| loki-minio.resources.limits.memory | string | `"1Gi"` |  |
| loki-minio.resources.requests.cpu | string | `"200m"` |  |
| loki-minio.resources.requests.memory | string | `"256Mi"` |  |
| loki-minio.secret_key | string | `"password123456"` |  |
| loki-minio.svcNameOverride | string | `"loki-minio"` |  |
| loki-querier-frontend.fullnameOverride | string | `"loki-querier-frontend"` |  |
| loki-querier-frontend.image.pullPolicy | string | `"IfNotPresent"` |  |
| loki-querier-frontend.image.repository | string | `"grafana/loki:1.6.0"` |  |
| loki-querier-frontend.nameOverride | string | `"loki-querier-frontend"` |  |
| loki-querier-frontend.replicaCount | int | `2` |  |
| loki-querier-frontend.resources.limits.cpu | string | `"1"` |  |
| loki-querier-frontend.resources.limits.memory | string | `"1Gi"` |  |
| loki-querier-frontend.resources.requests.cpu | string | `"200m"` |  |
| loki-querier-frontend.resources.requests.memory | string | `"256Mi"` |  |
| loki-querier-frontend.svcNameOverride | string | `"loki-querier-frontend"` |  |
| loki-querier.fullnameOverride | string | `"loki-querier"` |  |
| loki-querier.image.pullPolicy | string | `"IfNotPresent"` |  |
| loki-querier.image.repository | string | `"grafana/loki:1.6.0"` |  |
| loki-querier.nameOverride | string | `"loki-querier"` |  |
| loki-querier.replicaCount | int | `3` |  |
| loki-querier.resources.limits.cpu | string | `"1"` |  |
| loki-querier.resources.limits.memory | string | `"1Gi"` |  |
| loki-querier.resources.requests.cpu | string | `"200m"` |  |
| loki-querier.resources.requests.memory | string | `"256Mi"` |  |
| loki-querier.svcNameOverride | string | `"loki-querier"` |  |
| loki-redis.fullnameOverride | string | `"loki-redis"` |  |
| loki-redis.image.pullPolicy | string | `"IfNotPresent"` |  |
| loki-redis.image.repository | string | `"redis:5.0.6-alpine"` |  |
| loki-redis.nameOverride | string | `"loki-redis"` |  |
| loki-redis.resources.limits.cpu | string | `"1"` |  |
| loki-redis.resources.limits.memory | string | `"4Gi"` |  |
| loki-redis.resources.requests.cpu | string | `"200m"` |  |
| loki-redis.resources.requests.memory | string | `"2Gi"` |  |
| loki-redis.svcNameOverride | string | `"loki-redis"` |  |
| table-manager.fullnameOverride | string | `"table-manager"` |  |
| table-manager.image.pullPolicy | string | `"IfNotPresent"` |  |
| table-manager.image.repository | string | `"grafana/loki:1.6.0"` |  |
| table-manager.nameOverride | string | `"table-manager"` |  |
| table-manager.replicaCount | int | `1` |  |
| table-manager.resources.limits.cpu | string | `"1"` |  |
| table-manager.resources.limits.memory | string | `"1Gi"` |  |
| table-manager.resources.requests.cpu | string | `"200m"` |  |
| table-manager.resources.requests.memory | string | `"256Mi"` |  |
| table-manager.svcNameOverride | string | `"table-manager"` |  |
