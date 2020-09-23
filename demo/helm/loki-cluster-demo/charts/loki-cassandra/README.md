# loki-cassandra

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square)

cassandra

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"bitnami/cassandra:3-debian-10"` |  |
| imagePullSecrets | list | `[]` |  |
| livenessProbe.failureThreshold | int | `130` |  |
| livenessProbe.initialDelaySeconds | int | `300` |  |
| livenessProbe.periodSeconds | int | `30` |  |
| livenessProbe.successThreshold | int | `1` |  |
| livenessProbe.tcpSocket.port | int | `9042` |  |
| livenessProbe.timeoutSeconds | int | `10` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"1"` |  |
| resources.limits.memory | string | `"10Gi"` |  |
| resources.requests.cpu | string | `"500m"` |  |
| resources.requests.memory | string | `"8Gi"` |  |
| service.ports[0].name | string | `"http-7000"` |  |
| service.ports[0].port | int | `7000` |  |
| service.ports[0].protocol | string | `"TCP"` |  |
| service.ports[0].targetPort | int | `7000` |  |
| service.ports[1].name | string | `"http-9042"` |  |
| service.ports[1].port | int | `9042` |  |
| service.ports[1].protocol | string | `"TCP"` |  |
| service.ports[1].targetPort | int | `9042` |  |
| service.type | string | `"ClusterIP"` |  |
| svcNameOverride | string | `""` |  |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` |  |
| volumes | list | `[]` |  |
