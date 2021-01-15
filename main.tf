#####################################
# Module to create Keyvault Secret  #
#####################################


#Resource Creation

resource "azurerm_key_vault_secret" "TerraSecret" {
  name          = var.PasswordName
  value         = var.PasswordValue
  key_vault_id  = var.KeyVaultId

  tags = {
    Environment       = var.EnvironmentTag
    EnvironmentUsage  = var.EnvironmentUsageTag
    Owner             = var.OwnerTag
    ProvisioningDate  = var.ProvisioningDateTag
    ProvisioningMode  = var.ProvisioningModeTag
    Username          = var.UsernameTag
  }

  lifecycle {
    ignore_changes = [
      value,
      tags["ProvisioningDate"],
    ]
  }
}
