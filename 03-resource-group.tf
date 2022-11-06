#Terraform resource to create Azure Resource Group with input variable
resource "azurerm_resource_group" "aks_rg" {
    name = "${var.resource_group_name}-${var.environment}"
    location = var.location
    tags = {
      "my_tag" = "Mytag"
    }
  
}

