# Terraform module for G Suite MX records in Amazon Route 53

This module requires the `aws` provider to have been configured.

## Parameters

- `zone_id` (required): The Route 53 zone id for the domain.
- `sub_domain` (default: none). The sub-domain for the MX records, if
  applicable.
- `ttl` (default: `3600`).

## Example

```hcl-terraform
module "example_email" {
  source = "github.com/gnarea/terraform-gmail//route53"

  domain = "example.com"
}
```
