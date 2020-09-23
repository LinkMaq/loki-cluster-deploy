# loki-redis

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square)

redis

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"redis:5.0.6-alpine"` |  |
| imagePullSecrets | list | `[]` |  |
| livenessProbe.failureThreshold | int | `3` |  |
| livenessProbe.initialDelaySeconds | int | `120` |  |
| livenessProbe.periodSeconds | int | `30` |  |
| livenessProbe.successThreshold | int | `1` |  |
| livenessProbe.tcpSocket.port | int | `6379` |  |
| livenessProbe.timeoutSeconds | int | `5` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"1"` |  |
| resources.limits.memory | string | `"4Gi"` |  |
| resources.requests.cpu | string | `"200m"` |  |
| resources.requests.memory | string | `"2Gi"` |  |
| service.ports[0].name | string | `"http-6379"` |  |
| service.ports[0].port | int | `6379` |  |
| service.ports[0].protocol | string | `"TCP"` |  |
| service.ports[0].targetPort | int | `6379` |  |
| service.type | string | `"ClusterIP"` |  |
| svcNameOverride | string | `""` |  |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` |  |
| volumes | list | `[]` |  |
