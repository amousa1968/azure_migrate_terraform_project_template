module "resource_group" {
  source   = "./modules/resource_group"
  rg_name  = var.rg_name
  location = var.location
}

module "network" {
  source              = "./modules/network"
  rg_name             = module.resource_group.rg_name
  location            = var.location
  vnet_name           = var.vnet_name
  subnet_name         = var.subnet_name
  address_space       = var.address_space
  subnet_prefix       = var.subnet_prefix
}

module "migrate_project" {
  source         = "./modules/migrate_project"
  rg_name        = module.resource_group.rg_name
  location       = var.location
  migrate_project_name = var.migrate_project_name
}

module "migrate_assessment" {
  source            = "./modules/migrate_assessment"
  migrate_project_id = module.migrate_project.project_id
  assessment_name   = var.assessment_name
}

module "migrate_replication" {
  source              = "./modules/migrate_replication"
  migrate_project_id  = module.migrate_project.project_id
  target_network_id   = module.network.vnet_id
}

module "migrate_vm" {
  source              = "./modules/migrate_vm"
  migrate_project_id  = module.migrate_project.project_id
  vm_name             = var.vm_name
  target_network_id   = module.network.vnet_id
}
