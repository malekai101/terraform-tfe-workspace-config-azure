// Variable for testing.  These should be removed or commented out.
/*
variable tfe_api_key {

}
*/

// Production module variables.
variable workspace_name {
  type        = string
  description = "The name of the TFC workspace to configure."
}

variable workspace_organization {
  type        = string
  description = "The organization to which the workspace belongs."
}

variable arm_client_id {
  type        = string
  description = "The Client ID used to log into Azure."
}

variable arm_subscription_id {
  type        = string
  description = "The Subscription ID used to log into Azure."
}

variable arm_tenant_id {
  type        = string
  description = "The Tenant ID used to log into Azure."
}

variable arm_client_secret {
  type        = string
  description = "The Secret associated with the Client ID used to log into Azure."
}