# workspace-config-azure
A Terraform module to configure a workspace for Azure access

## Overview

This module configures a Terraform Cloud workspace to access the Azure environment.  This code is run so that clients of the workspace will never need login access to Azure.  Environmental variables are created with the subscription, client, secret, and tenant information required to access Azure.  

There is no output to the module.  Running a `terraform destroy` or removing the module from the calling code will not destroy the workspace but will remove variables created by the module. 

## Requirements

To use this module the client must use the [i]tfe[/i] provider which has been initailized with a TFC user account that has sufficient rights to edit the target workspace.  The client must also provide values for the Azure connection variables.  The module does validates the information provided.

## Usage

```hcl
provider tfe {
    token = "xxxxxx"
}

module "sample-repo" {
    source = "app.terraform.io/csmith/workspace-config-azure/tfe"

    workspace_name = "Name"
    workspace_organization = "Org"
    
    arm_client_id = "xxxxxx"
    arm_subscription_id = "xxxxxx"
    arm_tenant_id = "xxxxxx"
    arm_client_secret = "xxxxxx"
}
```
