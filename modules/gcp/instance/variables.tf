#--------------------GCP
variable "machine_type" {
  default = "n1-standard-2"
}
variable "image" {
    default = "centos-cloud/centos-7"
}
variable "zone" {
  default = ""
}
#--------------------users
variable "gce_ssh_user" {
    default = "centos"
}
variable "gce_ssh_alex" {
    default = "alex"
}
variable "gce_ssh_andrii" {
    default = "andrii"
}
#--------------------keys
variable "pub_key" {
  default = ""
}
variable "pub_key_alex" {
  default = ""
}
variable "pub_key_andrii" {
  default = ""
}
#--------------------quantity instances
variable "number" {
    default = "1"
}
#--------------------environment
variable "env" {
    default = ""
}
#--------------------network
variable "subnetwork" {
    default = ""
}
#--------------------firewall
variable "tags" {
    default = ""
}
