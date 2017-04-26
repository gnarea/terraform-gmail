variable "domain" {}
variable "sub_domain" {
  default = "@"
}
variable "ttl" {
  default = 3600
}
variable "mx_server_domains" {
  type = "list"
  default = [
    "aspmx.l.google.com",
    "alt1.aspmx.l.google.com",
    "alt2.aspmx.l.google.com",
    "alt3.aspmx.l.google.com",
    "alt4.aspmx.l.google.com",
  ]
}


resource "cloudflare_record" "main" {
  count = "${length(var.mx_server_domains)}"

  domain = "${var.domain}"
  name = "${var.sub_domain}"
  value = "${var.mx_server_domains[count.index]}"
  priority = "${count.index + 1}"
  type = "MX"
  ttl = "${var.ttl}"
}
