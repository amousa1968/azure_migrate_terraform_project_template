resource "azurerm_migrate_assessment" "this" {
  name          = var.assessment_name
  project_id    = var.migrate_project_id
  currency      = "USD"
  scaling_factor = 1.0
}
