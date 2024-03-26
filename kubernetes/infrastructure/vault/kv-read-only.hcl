# external-secrets policy

# vault policy write external-secrets external-secrets-policy.hcl
path "kv/*" {
    capabilities = ["read", "list"]
}
