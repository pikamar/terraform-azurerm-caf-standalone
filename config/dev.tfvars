global_settings = {
  default_region = "region1"
  regions = {
    region1 = "westeurope"
  }
  passthrough = true
  resource_defaults = {
  }
}

resource_groups = {
  ebdv-rg = {
    name = "ebdv-rg-storage-shared-02"
  }
}

storage_accounts = {
  sa1 = {
    name = "ebdvstadiagnostics04"
    resource_group_key = "ebdv-rg"
    account_kind = "StorageV2"
    account_tier = "Standard"
    account_replication_type = "LRS"
    tags = {
        "BusinessCriticality" = "Regular"
        "BusinessUnit"        = "IT"
        "OperationsTeam"      = "ITOps"
        "Workload"            = "Storage"
    }
  }
}