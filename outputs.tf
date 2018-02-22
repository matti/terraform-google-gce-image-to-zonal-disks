output "id" {
  value = "${join("-", google_compute_disk.disk.*.id)}"
}

output "disk_name" {
  value = "${local.disk_name}"
}
