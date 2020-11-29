provider "azurerm" {
  subscription_id = "1d6be8cc-61a3-42ca-8049-478d0c9cc18f"
  client_id       = "77881594-5110-48fb-8660-d32620fabc69"
  client_secret   = var.client_secret
  tenant_id       = "744d83e1-972a-4569-af9c-a5d484cc6dde"
    features {}
}

resource "azurerm_resource_group" "rg-terraform2" {
    name = "RG-Services"
    location = "East US 2"
}

resource "azurerm_virtual_network" "red-virtual2" {
    name = "Vnet-Services"
    address_space = ["174.20.0.0/16"]
    location = "East US 2"
    resource_group_name = azurerm_resource_group.rg-terraform2.name
}

resource "azurerm_subnet" "subnet-terraform0" {
    name = "Subnet-1"
    resource_group_name = azurerm_resource_group.rg-terraform2.name
    virtual_network_name = azurerm_virtual_network.red-virtual2.name
    address_prefixes = ["174.20.1.0/24"]
}

resource "azurerm_subnet" "subnet-terraform2" {
    name = "Subnet-2"
    resource_group_name = azurerm_resource_group.rg-terraform2.name
    virtual_network_name = azurerm_virtual_network.red-virtual2.name
    address_prefixes = ["174.20.2.0/24"]
}

resource "azurerm_subnet" "subnet-terraform3" {
    name = "Subnet-3"
    resource_group_name = azurerm_resource_group.rg-terraform2.name
    virtual_network_name = azurerm_virtual_network.red-virtual2.name
    address_prefixes = ["174.20.3.0/24"]
}
resource "azurerm_subnet" "subnet-terraform4" {
    name = "Subnet-4"
    resource_group_name = azurerm_resource_group.rg-terraform2.name
    virtual_network_name = azurerm_virtual_network.red-virtual2.name
    address_prefixes = ["174.20.4.0/24"]
}


