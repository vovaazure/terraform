# - **terraform refresh:** Update local state file against real resources in cloud
# - **Desired State:** Local Terraform Manifest (main.tf)
# - **Current State:**  Real Resources present in your cloud
# - **Command Order of Execution:** refresh, plan, make a decision, apply

terraform init
terraform plan 
terraform plan -out v1-plan #Createing plan file
terraform apply
terraform apply v1-plan #applies plan file
terraform validate #validateing terraform tamplet
terraform refresh #syncing loclat state file from clooud
terraform show # shows what terraform has been created
terraform providers #shows terraform providers
terraform destroy # destroyes all the resources created by terraform 
terraform destroy -target=azurerm_resource_group.aks-rg2 #destroy specific resource azurerm_resource_group.aks-rg2
