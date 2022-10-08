module "key_vault" {
  source = "../key-vault"

  rg_name  = module.resource_group.name
  location = module.resource_group.location

  prefix  = var.prefix
  postfix = "test-tf-2"

  vnet_id   = module.virtual_network.id
  subnet_id = azurerm_subnet.default_subnet.id
}