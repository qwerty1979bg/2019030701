resource "null_resource" "test" {}

output "test" {
  value = "${null_resource.test.id}"
}
