resource "azurerm_resource_group" "placeholder" {
  name     = "replication-placeholder"
  location = "East US"
}

output "replication_placeholder_id" {
  value = azurerm_resource_group.placeholder.id
}
