provider "cloudflare" {
  email = "${var.cf_mail}"
  token = "${var.cf_token}"
}

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}
