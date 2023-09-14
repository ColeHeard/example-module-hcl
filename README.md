## Unrelated Content

"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

<!-- BEGIN_TF_DOCS -->
#### Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=3.0.0 |

#### Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_subnet.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Example Usage:
```hcl
module "example" {

	 # Required Input
	 source  =
	 version  =
	 network_name  = 
	 region  = 
	 resource_group_name  = 

	 # Optional Input
	 cidr  =
	 service_delegation_action  =
	 service_delegation_name  =
	 subnet_count  =
}
```

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr"></a> [cidr](#input\_cidr) | The VNET address space in CIDR notation. | `list(string)` | ```[ "10.0.0.0/16" ]``` | no |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | Name of the network. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region for the VNET. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group. | `string` | n/a | yes |
| <a name="input_service_delegation_action"></a> [service\_delegation\_action](#input\_service\_delegation\_action) | The scope of actions a delegated service can make. | `list(string)` | ```[ "Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/read", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action" ]``` | no |
| <a name="input_service_delegation_name"></a> [service\_delegation\_name](#input\_service\_delegation\_name) | The service(s) permitted to perform actions on the subnet(s). | `list(string)` | `null` | no |
| <a name="input_subnet_count"></a> [subnet\_count](#input\_subnet\_count) | The number of subnets for the VNET. | `number` | `1` | no |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_resource_group_id"></a> [resource\_group\_id](#output\_resource\_group\_id) | The id of the resource group created. |
| <a name="output_subnets"></a> [subnets](#output\_subnets) | The subnets created. |
| <a name="output_vnet"></a> [vnet](#output\_vnet) | The vnet created. |
<!-- END_TF_DOCS -->

## Disclaimer

> See the LICENSE file for all disclaimers. Copyright (c) 2023 Cole Heard