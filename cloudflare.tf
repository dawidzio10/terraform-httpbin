resource "cloudflare_record" "web-domain" {
  domain  = "${var.cf_domain}"
  name    = "web"
  value   = "${aws_lb.web-lb.dns_name}"
  type    = "CNAME"
  proxied = true
}

output "url" {
  value = "${cloudflare_record.web-domain.hostname}"
}
