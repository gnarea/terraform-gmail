# Terraform modules to manage G Suite (fka Google Apps) MX Records

This is a (hopefully temporary) set of Terraform modules to manage MX records
for Gmail in [G Suite](https://gsuite.google.com/) (fka Google Apps).

## Supported DNS Hosting Providers

- [CloudFlare](/cloudflare/).

## Limitations

You can't override the provider because [Terraform doesn't support dynamic
provider aliases](https://github.com/hashicorp/terraform/issues/3656).
