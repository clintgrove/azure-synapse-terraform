module "virtual_network" {
  source = "github.com/murggu/azure-terraform-modules/virtual-network"

  rg_name  = var.resourcegroupname
  location = module.resource_group.location

  prefix  = var.prefix
  postfix = random_string.postfix.result
}

# Subnet definition

resource "azurerm_subnet" "default_subnet" {
  name                                           = "snet-syn-tf1-default"
  resource_group_name                            = var.resourcegroupname
  virtual_network_name                           = module.virtual_network.name
  address_prefixes                               = ["10.0.1.0/24"]
  service_endpoints                              = ["Microsoft.KeyVault", "Microsoft.Storage"]
  enforce_private_link_endpoint_network_policies = true
}

resource "azurerm_subnet" "bastion_subnet" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = var.resourcegroupname
  virtual_network_name = module.virtual_network.name
  address_prefixes     = ["10.0.10.0/27"]
}