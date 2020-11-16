provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "rg-terraform" {
    name = "RG-Terraform"
    location = "East US 2"
}
