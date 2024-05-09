# HortusFox

[HortusFox](https://github.com/danielbrendel/hortusfox-web) is a self-hosted plant manager.

## Deployment

1. Create secrets
    ```sh
    $ kubectl apply -f external-secrets.yaml
    externalsecret.external-secrets.io/hortusfox-secrets configured
    ```
2. Deploy the services
    ```sh
    helmfile apply
    ```
