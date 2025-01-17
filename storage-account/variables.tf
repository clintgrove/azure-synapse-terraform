variable "rg_name" {
  type        = string
  description = "Resource group name"
}

variable "location" {
  type        = string
  description = "Location of the resource group"
}

variable "prefix" {
  type        = string
  description = "Prefix for the module name"
}

variable "postfix" {
  type        = string
  description = "Postfix for the module name"
}

variable "vnet_id" {
  type        = string
  description = "The ID of the vnet that should be linked to the DNS zone"
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet from which private IP addresses will be allocated for this Private Endpoint"
}

variable "hns_enabled" {
  type        = bool
  description = "Hierarchical namespaces enabled/disabled"
  default     = true
}

variable "firewall_virtual_network_subnet_ids" {
  default = []
}

variable "firewall_bypass" {
  default = ["None"]
}

variable "private_dns_zone_ids_blob" {
  default = []
}

variable "private_dns_zone_ids_dfs" {
  default = []
}