# Terraform modules to manage G Suite (fka Google Apps) MX Records

This is a set of Terraform modules to manage MX records for Gmail in the
[G Suite](https://gsuite.google.com/) (fka Google Apps). It's meant to be
temporary until [Terraform supports the functionality
out-of-the-box](https://github.com/hashicorp/terraform/issues/14021).

## Supported DNS Hosting Providers

- [CloudFlare](/cloudflare/).
- [Amazon Route 53](/route53/).

## Limitations

You can't override the provider because [Terraform doesn't support dynamic
provider aliases](https://github.com/hashicorp/terraform/issues/3656).
