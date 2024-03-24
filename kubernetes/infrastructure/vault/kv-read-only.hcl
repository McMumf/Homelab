# external-secrets policy

# vault policy write external-secrets external-secrets-policy.hcl
path "kubernetes/*" {
    capabilities = ["read", "list"]
}
