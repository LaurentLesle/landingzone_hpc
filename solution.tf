module "caf" {
  source = "aztfmod/caf/azurerm"
  version = "~>0.4"

  tfstates                    = local.tfstates
  tags                        = local.tags
  global_settings             = local.global_settings
  diagnostics                 = local.diagnostics
  diagnostic_storage_accounts = var.diagnostic_storage_accounts
  logged_user_objectId        = var.logged_user_objectId
  logged_aad_app_objectId     = var.logged_aad_app_objectId
  resource_groups             = var.resource_groups
  storage_accounts            = var.storage_accounts
  azuread_groups              = var.azuread_groups
  keyvaults                   = var.keyvaults
  keyvault_access_policies    = var.keyvault_access_policies
  managed_identities          = var.managed_identities
  role_mapping                = var.role_mapping
  compute = {
    virtual_machines = var.virtual_machines
  }
  networking = {
#    vnets                             = var.vnets
#    network_security_group_definition = var.network_security_group_definition
    public_ip_addresses               = var.public_ip_addresses
#    private_dns                       = var.private_dns
  }
}

