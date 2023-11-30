# Homer

[Homer](https://github.com/bastienwirtz/homer) is a central landing page for your homelab.

## Installation

Order of operations matters here as homer needs its config file.

```sh
$ kubectl apply -f homer-config.yaml
configmap/homer created

$ helmfile apply
Adding repo djjudas21 https://djjudas21.github.io/charts/
"djjudas21" has been added to your repositories
...
UPDATED RELEASES:
NAME    CHART             VERSION   DURATION
homer   djjudas21/homer   8.1.9           1s


$ kubectl apply -f homer-ingress.yaml
ingress.networking.k8s.io/homer configured

```
