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
    Usage             = var.UsageTag
    Owner             = var.OwnerTag
    ProvisioningDate  = timestamp()
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
