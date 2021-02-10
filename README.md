# Module description
This module will create a Secret in the provided Key Vault. 

# Required resources
- Keyvault
It is prefered to have the keyvault created beforehand. You may need the "depend_on" argument if you create the Keyvault in the same apply task.

# Optional 
You an use random provider to generate a password and feed the value here so that it does not appear in you code repository. It will howaever be stored in plain text in your terraform state file

# Usage example

```hcl
module "Kv-DemoVaultSecret" {
  source = "github.com/nfrappart/azTerraKeyvaultSecret?ref=v1.0.0"
  PasswordName = "vm1-localadmin" #this is the name used in the key vault to save the secret
  PasswordValue = random_password.TerraVM-pass.result #this is the value of the secret. 
  KeyVaultId = module.Kv-Demo.Id #you must provided a valid existing Keyvault ID.
  UsernameTag = "localuser" #this tag help to save the username associated with the registered secret
  #EnvironmentTag = "Prod" #Default value is "Test", you can use this tag to identify test, stage, prod, or any other type of environment
  #UsageTag = "Demo" #Optional. Default value is "PoC Usage Only"
  #OwnerTag = "whoever is accountable for this resource" #Default value is "Nate" so I suggest you change it :)
  #ProvisioningModeTag = "Terraform" #Default value is "Terraform"
}
```

