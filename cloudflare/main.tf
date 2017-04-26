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
    "ASPMX.L.GOOGLE.COM",
    "ALT1.ASPMX.L.GOOGLE.COM",
    "ALT2.ASPMX.L.GOOGLE.COM",
    "ALT3.ASPMX.L.GOOGLE.COM",
    "ALT4.ASPMX.L.GOOGLE.COM",
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
