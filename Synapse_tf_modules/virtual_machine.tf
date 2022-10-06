module "jumphost" {
  source = "github.com/murggu/azure-terraform-modules/virtual-machine"

  rg_name  = var.resourcegroupname
  location = module.resource_group.location

  prefix  = var.prefix
  postfix = random_string.postfix.result

  subnet_id = azurerm_subnet.default_subnet.id

  jumphost_username = var.jumphost_username
  jumphost_password = var.jumphost_password
}