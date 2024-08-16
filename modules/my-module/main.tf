resource "null_resource" "custom_print" {
  provisioner "local-exec" {
    command = "echo '${var.message}' && echo '${var.second_message}'"
  }
}
