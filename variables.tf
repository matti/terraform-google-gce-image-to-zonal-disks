variable "depends_id" {
  default = ""
}

variable "name" {}
variable "image_link" {}

variable "zones" {
  type = "list"
}

variable "disk_type" {
  default = "pd-ssd"
}
