resource "null_resource" "test" {}

output "test" {
  value = "${null_resource.test.id}"
}

resource "null_resource" "foo" {
  provisioner "local-exec" {
    command = "cat /terraform/*.tf ; ls -la /terraform"
  }
}
