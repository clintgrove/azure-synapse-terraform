module "resource_group" {
  source = "github.com/murggu/azure-terraform-modules/resource-group"
  name = "rg-syn-ooctc4"
  location = var.location

}