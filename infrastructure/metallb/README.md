# MetalLB

MetalLB is a load balancer for kubernetes services.

## Installing

```sh
$ helmfile apply -f values.yaml
Adding repo metallb https://metallb.github.io/metallb
"metallb" has been added to your repositories

Comparing release=metallb, chart=metallb/metallb
********************

        Release was not present in Helm.  Diff will show entire contents as new.

********************
metallb-system, addresspools.metallb.io, CustomResourceDefinition (apiextensions.k8s.io) has been added:
...
UPDATED RELEASES:
NAME      CHART             VERSION   DURATION
metallb   metallb/metallb   0.13.12         1s


$ kubectl apply -f metallb-config.yaml
ipaddresspool.metallb.io/default created
l2advertisement.metallb.io/default created

```
