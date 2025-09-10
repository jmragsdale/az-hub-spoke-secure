terraform { required_providers { azurerm = { source="hashicorp/azurerm", version="~> 3.100" } } }
provider "azurerm" { features {} }
variable "location" { type=string, default="eastus" }
resource "azurerm_resource_group" "rg" { name="rg-hubspoke-sec"; location=var.location }
# (Simplified hub/spoke + Firewall Basic; full production plans belong in branches)
