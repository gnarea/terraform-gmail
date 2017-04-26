# Terraform module for G Suite MX records in CloudFlare

## Parameters

- `domain` (required): The APEX domain (e.g., example.com).
- `sub_domain` (default: `@`). The sub-domain for the MX records, if
  applicable.
- `ttl` (default: `3600`).

## Example

```hcl-terraform
module "example_email" {
  source = "github.com/gnarea/terraform-gsuite-mx//cloudflare"

  domain = "example.com"
}
```
