# name of resource can be anything
module "custom_print_module" {
  source  = "../../modules/my-module"
  message = "Hello from Terraform Dev Environment!"
}
