# Terraform module for G Suite MX records in CloudFlare

<aside class="warning">
    This module is now deprecated but will be kept on GitHub to avoid breaking production environments. The
    CloudFlare integration has been reimplemented as the module
    <a href="https://registry.terraform.io/modules/gnarea/gmail/cloudflare">gnarea/gmail/cloudflare</a> on the
    Terraform Registry.
</aside>

This module requires the `cloudflare` provider to have been configured.

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
