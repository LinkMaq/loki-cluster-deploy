# loki-consul

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square)

consul

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| CONSUL_BIND_INTERFACE | string | `"eth0"` |  |
| affinity | object | `{}` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"consul:1.7.8"` |  |
| imagePullSecrets | list | `[]` |  |
| livenessProbe.failureThreshold | int | `3` |  |
| livenessProbe.initialDelaySeconds | int | `120` |  |
| livenessProbe.periodSeconds | int | `30` |  |
| livenessProbe.successThreshold | int | `1` |  |
| livenessProbe.tcpSocket.port | int | `8500` |  |
| livenessProbe.timeoutSeconds | int | `5` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"1"` |  |
| resources.limits.memory | string | `"512Mi"` |  |
| resources.requests.cpu | string | `"200m"` |  |
| resources.requests.memory | string | `"128Mi"` |  |
| service.ports[0].name | string | `"http-8500"` |  |
| service.ports[0].port | int | `8500` |  |
| service.ports[0].protocol | string | `"TCP"` |  |
| service.ports[0].targetPort | int | `8500` |  |
| service.ports[1].name | string | `"http-8300"` |  |
| service.ports[1].port | int | `8300` |  |
| service.ports[1].protocol | string | `"TCP"` |  |
| service.ports[1].targetPort | int | `8300` |  |
| service.ports[2].name | string | `"http-8301"` |  |
| service.ports[2].port | int | `8301` |  |
| service.ports[2].protocol | string | `"TCP"` |  |
| service.ports[2].targetPort | int | `8301` |  |
| service.ports[3].name | string | `"http-8302"` |  |
| service.ports[3].port | int | `8302` |  |
| service.ports[3].protocol | string | `"TCP"` |  |
| service.ports[3].targetPort | int | `8302` |  |
| service.ports[4].name | string | `"http-8600"` |  |
| service.ports[4].port | int | `8600` |  |
| service.ports[4].protocol | string | `"TCP"` |  |
| service.ports[4].targetPort | int | `8600` |  |
| service.type | string | `"ClusterIP"` |  |
| svcNameOverride | string | `""` |  |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` |  |
| volumes | list | `[]` |  |
