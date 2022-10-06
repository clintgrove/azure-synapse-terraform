module "key_vault" {
  source = "github.com/murggu/azure-terraform-modules/key-vault"

  rg_name  = var.resourcegroupname
  location = module.resource_group.location

  prefix  = var.prefix
  postfix = random_string.postfix.result

  vnet_id   = module.virtual_network.id
  subnet_id = azurerm_subnet.default_subnet.id
}