variable "create" {
  type    = bool
  default = true
}
locals {
  can_create = var.create && true
}
resource "random_pet" "this" {
  count = local.can_create ? 1 : 0
}
output "id" {
  value = try(random_pet.this[0].id, "")
}
