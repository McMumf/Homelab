# Authentik

[Authentik](https://docs.goauthentik.io/docs/) is an identity provider.

## Deployment

1. Ensure [vault](../vault/README.md) is setup and configured with a proper `kv`
2. In your vault kv, create a new secret called `authentik`
3. Create kv pairs for the following: 
   1. `postgresql_password`
   2. `secret_key`
   3. `email_access_key`
   4. `email_secret_key`
4. Create the External Secret: `kubectl apply -f external-secrets.yaml -n authentik`
5. deploy using helmfile: `helmfile apply`
6. Wait for services to spin up
7. Connect to `https://<ingress-host-name>/if/flow/initial-setup/` to setup the default `akadmin` user
   1. Note: the ending `/` is important
   2. Suggested using a password manager with an email alias with a long, and random, password with special characters, numbers, and upper/lower case letters
8. Continue to setup

## Configuration

### Branding

### LDAP
