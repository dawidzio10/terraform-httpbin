variable "access_key" {
  default = "YOURACCESSKEY"
}
variable "secret_key" {
  default = "YOURSECRETKEY"
}
variable "region" {
  default = "YOURREGION"
}
variable "key_name" {
  default = "YOURAWSSSHKEYNAME"
}
variable "cf_mail" {
  default = "YOURCFMAIL"
}
variable "cf_token" {
  default = "YOURCFTOKEN"
}
variable "cf_domain" {
  default = "YOURCFDOMAIN"
}
variable "ssh_ip" {
  type    = list(string)
  default = ["YOURIP"]
}
