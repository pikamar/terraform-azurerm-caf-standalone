# terraform-azurerm-caf Standalone examples

This example will create two resources
* Resource Group
* Storage Account

## Setup
Service principal will be needed to deploy this CAF example

`az ad sp create-for-rbac -n terraform --role Contributor --scopes /subscriptions/<your_subscription_id>`
```
{
  "appId": "***",
  "displayName": "terraform",
  "password": "***",
  "tenant": "***"
}
```

CLI output should be saved in a safe place and used in environment variables to do a deployment

```
export ARM_CLIENT_ID="<appId>"
export ARM_TENANT_ID="<tenant>"
export ARM_SUBSCRIPTION_ID="<your_subscription_id>"
export ARM_CLIENT_SECRET="<password>"
```

## Deployment
Initialize terraform module

`terraform init`

See the deployment plan

`terraform plan -var-file=config/dev.tfvars`

Deploy azure resources

`terraform apply -auto-approve -var-file=config/dev.tfvars`
