resource "null_resource" "start" {
  triggers {
    depends_id = "${var.depends_id}"
  }
}

locals {
  disk_name = "${var.name}"
}

resource "google_compute_disk" "disk" {
  depends_on = ["null_resource.start"]

  count = "${length(var.zones)}"

  name = "${local.disk_name}"
  type = "${var.disk_type}"

  zone  = "${element(var.zones, count.index)}"
  image = "${var.image_link}"

  lifecycle {
    create_before_destroy = true
  }
}
