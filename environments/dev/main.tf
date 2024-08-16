# name of module can be any name
module "custom_print_module" {
  source  = "../../modules/my-module"
  message = "Hello from Terraform Dev Environment!"
}
