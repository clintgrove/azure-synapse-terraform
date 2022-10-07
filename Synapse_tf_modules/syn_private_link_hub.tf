module "synapse_private_link_hub" {
  source = "github.com/murggu/azure-terraform-modules/synapse-private-link-hub"

  rg_name  = var.resourcegroupname
  location = module.resource_group.location

  prefix  = var.prefix
  postfix = "test-synpvtlink-tf1"

  subnet_id = azurerm_subnet.default_subnet.id
}