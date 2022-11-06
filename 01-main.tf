# We will define 
# 1. Terraform Settings Block
# 1. Required Version Terraform
# 2. Required Terraform Providers
# 3. Terraform Remote State Storage with Azure Storage Account (last step of this section)
# 2. Terraform Provider Block for AzureRM
# 3. Terraform Resource Block: Define a Random Pet Resource



# Configure the Microsoft Azure Provider
#terraform settings bloick
terraform {
  #Requaired Version Terraform
  required_version = ">= 0.13"
  # 2. Required Terraform Providers
  required_providers {
   azurerm  = {
     source = "hashicorp/azurerm"
     version = "~> 2.0"
    }

    azuread = {
      source = "hashicorp/azuread"
      version = "2.3"
     }
    
    random = {
      source = "hashicorp/random"
      version = "~> 3.0"
     }
  }
  #Terraform St Storage to AzureRM storage container
  backend "azurerm" {
    resource_group_name = "terraform-storage-rg"
    storage_account_name = "terraformstoragebazeyan"
    container_name = "tfstatefiles"
    key = "terraform.tfstate"
  }

}
# 2. Terraform Provider Block for AzureRM

provider "azurerm" {
    features {
      
    }
  
}
# 3. Terraform Resource Block: Define a Random Pet Resource
resource "random_pet" "aksrandom" {
  
}