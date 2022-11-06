terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "aks-rg2" {
  name     = "aks-rg2-tf2"
  location = "West Europe"
  tags = {
    "environment"="k8sdev"
    "demotag"     = "terraformRefresh"
    "tagik"       = "3rdik"
  }
}