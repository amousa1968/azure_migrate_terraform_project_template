variable "rg_name" {}
variable "location" { default = "East US" }
variable "vnet_name" { default = "azure-migrate-vnet" }
variable "subnet_name" { default = "migration-subnet" }
variable "address_space" { default = ["10.10.0.0/16"] }
variable "subnet_prefix" { default = "10.10.1.0/24" }
variable "migrate_project_name" { default = "vmware-migration-project" }
variable "assessment_name" { default = "vmware-assessment" }
variable "vm_name" { default = "linux-vm-migrated" }
