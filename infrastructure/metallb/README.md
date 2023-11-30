# MetalLB

MetalLB is a load balancer for kubernetes services.

## Prerequisites

K3s ships with it's own load balancer so we have to disable it.

1. Stop k3s `systemctl stop k3s`
2. Edit the systemd entry found at `/etc/systemd/system/k3s.service` and add `--disable servicelb` to the bottom in the `ExecStart` field
3. Reload systemctl: `systemctl daemon-reload`
4. Start k3s: `systemctl start k3s`

Note: This must be done on **all** instances running k3s, including slave nodes.

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
