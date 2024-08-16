resource "null_resource" "custom_print" {
  provisioner "local-exec" {
    command = "echo '${var.message}'"
  }
}

resource      "null_resource" "custom_print" {

  provisioner "local-exec" {
    command = "echo '${var.second_message}'"
  }
}
