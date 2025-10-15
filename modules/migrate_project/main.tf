resource "azurerm_migrate_project" "this" {
  name                = var.migrate_project_name
  location            = var.location
  resource_group_name = var.rg_name
}

output "project_id" { value = azurerm_migrate_project.this.id }
