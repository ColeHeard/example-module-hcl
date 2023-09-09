###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###
### Variables
###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###
variable "resource_group_name" {
  type        = string
  description = "Name of the resource group."
}
variable "network_name" {
  type        = string
  description = "Name of the network."
}
variable "cidr" {
  type        = list(string)
  default     = ["10.0.0.0/16"]
  description = "The VNET address space in CIDR notation."
}
variable "subnet_count" {
  type        = number
  description = "The number of subnets for the VNET."
  default     = 1
}
variable "region" {
  type        = string
  description = "The region for the VNET."
  validation {
    condition = anytrue([
      lower(var.region) == "northcentralus",
      lower(var.region) == "southcentralus",
      lower(var.region) == "westcentral",
      lower(var.region) == "centralus",
      lower(var.region) == "westus",
      lower(var.region) == "westus2",
      lower(var.region) == "westus3",
      lower(var.region) == "eastus",
      lower(var.region) == "eastus2"
    ])
    error_message = "Please select one of the approved regions: northcentralus, southcentralus, westcentral, centralus, westus, eastus, northeurope, westeurope, norwayeast, norwaywest, swedencentral, switzerlandnorth, uksouth, or ukwest"
  }
}
# https://learn.microsoft.com/en-us/azure/virtual-network/subnet-delegation-overview
variable "service_delegation_name" {
  type        = list(string)
  description = "The service(s) permitted to perform actions on the subnet(s)."
  default     = null
}
variable "service_delegation_action" {
  type        = list(string)
  description = "The scope of actions a delegated service can make."
  default     = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/read", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
}
output "meaningless_variable" {
  description = "Meaningless example variable created for demonstrative purposes."
  value       = "Example output."
}