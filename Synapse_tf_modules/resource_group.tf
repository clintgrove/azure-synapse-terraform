module "resource_group" {
  source = "github.com/murggu/azure-terraform-modules/resource-group"

  location = var.location

  prefix  = var.prefix
  postfix = "${environment}-uks-synp1"
}