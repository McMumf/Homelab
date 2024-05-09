# Home Assisstant

This is configured to setup an external ingress to a deployment of Home Assistant outside the cluster.

## Install

```sh
λ kubectl apply -f service-and-ingress.yaml
endpointslice.discovery.k8s.io/hassio-proxy-service created
service/hassio-proxy-service created
ingress.networking.k8s.io/ha-ingress created
```

## Update Home Assistant Configs

You will need to configure hassio to have a trusted proxy:

```yaml
http:
  use_x_forwarded_for: true
  trusted_proxies:
    - 86.57.30.9
```
