module "storage_accounts" {
  source  = "aztfmod/caf/azurerm"
  version = "5.3.11"

  providers = { azurerm.vhub = azurerm }

  global_settings  = var.global_settings
  resource_groups  = var.resource_groups
  storage_accounts = var.storage_accounts
}