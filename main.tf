variable "create" {
  type    = bool
  default = true
}
module "test" {
  source = "./modules/inner_count"

  create = true
}
