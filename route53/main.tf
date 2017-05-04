variable "zone_id" {}
variable "sub_domain" {
  default = ""
}
variable "ttl" {
  default = 3600
}


resource "aws_route53_record" "main" {
  zone_id = "${var.zone_id}"
  name = "${var.sub_domain}"
  type = "MX"
  records = [
    "10 ASPMX.L.GOOGLE.COM",
    "20 ALT1.ASPMX.L.GOOGLE.COM",
    "30 ALT2.ASPMX.L.GOOGLE.COM",
    "40 ASPMX2.GOOGLEMAIL.COM",
    "50 ASPMX3.GOOGLEMAIL.COM",
  ]
  ttl = "${var.ttl}"
}
