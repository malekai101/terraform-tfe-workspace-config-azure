/*
Need to do the following:
 - Discover the workspace.  This should be from input.
 - Add environmental variables for Azure login.  This should be from input.
 - Configure sentinel policies.  This should be from input.  Not possible yet.  Hopefully in the future.
*/

//TODO:  Remove after testing.
/*
provider "tfe" {
  token = var.tfe_api_key
}
*/

// Discover the workspace

data "tfe_workspace" "dev_workspace" {
  name         = var.workspace_name
  organization = var.workspace_organization
}

// Add the environmental variables

resource "tfe_variable" "azure_subscription_id" {
  key          = "ARM_SUBSCRIPTION_ID"
  value        = var.arm_subscription_id
  category     = "env"
  workspace_id = data.tfe_workspace.dev_workspace.id
  description  = "Azure Subscription ID"
}

resource "tfe_variable" "azure_client_id" {
  key          = "ARM_CLIENT_ID"
  value        = var.arm_client_id
  category     = "env"
  workspace_id = data.tfe_workspace.dev_workspace.id
  description  = "Azure Client ID"
}

resource "tfe_variable" "azure_tenant_id" {
  key          = "ARM_TENANT_ID"
  value        = var.arm_tenant_id
  category     = "env"
  workspace_id = data.tfe_workspace.dev_workspace.id
  description  = "Azure Tenant ID"
}

resource "tfe_variable" "azure_client_secret" {
  key          = "ARM_CLIENT_SECRET"
  value        = var.arm_client_secret
  category     = "env"
  workspace_id = data.tfe_workspace.dev_workspace.id
  description  = "Azure Client Secret"
  sensitive    = true
}