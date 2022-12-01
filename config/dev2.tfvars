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
    //name = "ebdv-rg-storage-shared-02"
    id = "/subscriptions/123e8dcf-01be-4f6d-b18d-fdd89e62d672/resourceGroups/ebdv-rg-storage-shared-02"
  }
}

storage_accounts = {
  sa1 = {
    name = "ebdvstadiagnostics05"
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