resource "null_resource" "test" {}

output "test" {
  value = "${null_resource.test.id}"
}

resource "null_resource" "foo2" {
  provisioner "local-exec" {
    command = "cat /terraform/zzz_backend_config.tf.json"
  }
}
