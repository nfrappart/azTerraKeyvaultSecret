#Variable declaration for Module

variable "PasswordName" {
  type = string
}

variable "PasswordValue" {
  type = string
}

variable "KeyVaultId" {
  type = string
}

# Variable to define the Tag

variable "UsernameTag" {
  type    = string
  default = "N/A"
  description = "Tag indicating username, if applicable."
}

variable "EnvironmentTag" {
  type    = string
  default = "Test"
}

variable "OwnerTag" {
  type = string
  default = "Nate"
}

variable "UsageTag" {
  type = string
  default = "PoC usage only"
}
variable "ProvisioningModeTag" {
  type = string
  default = "Terraform"
}
