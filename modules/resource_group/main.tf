resource "azurerm_resource_group" "this" {
  name     = var.rg_name
  location = var.location
}

output "rg_name" { value = azurerm_resource_group.this.name }
