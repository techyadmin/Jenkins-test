provider "azurerm" {
  subscription_id = "1d6be8cc-61a3-42ca-8049-478d0c9cc18f"
  client_id       = "77881594-5110-48fb-8660-d32620fabc69"
  client_secret   = var.client_secret
  tenant_id       = "744d83e1-972a-4569-af9c-a5d484cc6dde"
    features {}
}

resource "azurerm_resource_group" "rg-terraform" {
    name = "RG-Terraform"
    location = "East US 2"
}

resource "azurerm_virtual_network" "red-virtual" {
    name = "VNet-Terraform"
    address_space = ["10.0.0.0/16"]
    location = "East US 2"
    resource_group_name = azurerm_resource_group.rg-terraform.name
}

resource "azurerm_subnet" "subnet-terraform" {
    name = "Subnet-1"
    resource_group_name = azurerm_resource_group.rg-terraform.name
    virtual_network_name = azurerm_virtual_network.red-virtual.name
    address_prefixes = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "subnet-terraform2" {
    name = "Subnet-2"
    resource_group_name = azurerm_resource_group.rg-terraform.name
    virtual_network_name = azurerm_virtual_network.red-virtual.name
    address_prefixes = ["10.0.2.0/24"]
}

