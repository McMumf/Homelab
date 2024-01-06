# Home Assisstant

This is configured to setup an external ingress to a deployment of Home Assistant outside the cluster.

## Install

```sh
kubectl apply -f service-and-ingress.yaml
service/homeassistant-redirect created
ingress.networking.k8s.io/home-assistant unchanged
```