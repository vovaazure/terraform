#Create Outputs
#1. Resource Group Location
#2. Resource Group ID
#3. Resource Group Name

output "location" {
    value = azurerm_resource_group.aks_rg.location
  
}
output "Resource_group_id" {
    value = azurerm_resource_group.aks_rg.id
  
}
output "reource_group_name" {
    value =  azurerm_resource_group.aks_rg.name  
}
output "tag" {
    value =  azurerm_resource_group.aks_rg.tags
}