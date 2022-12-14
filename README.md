# terraform

## Step-02: Terraform Configuration Language Syntax
- Understand Resources
- Understand Blocks
- Understand Arguments
- Understand Identifiers
- Understand Comments
- [Terraform Configuration](https://www.terraform.io/docs/configuration/index.html)
- [Terraform Configuration Syntax](https://www.terraform.io/docs/configuration/syntax.html)
```
# Template
<BLOCK TYPE> "<BLOCK LABEL>" "<BLOCK LABEL>"   {
  # Block body
  <IDENTIFIER> = <EXPRESSION> # Argument
}

# Example
resource "azurerm_resource_group" "aksdev" {   # BLOCK
  name     = "aks-rg2-tf" # Argument
  location = var.region   # Argument with value as expression (Variable value replaced from varibales.tf )

  tags = {  #BLOCK
    "environment" = "k8sdev"
  }
}
```
