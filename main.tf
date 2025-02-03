data "azapi_client_config" "current" {}

module "alz" {
  source             = "azure/avm-ptn-alz/azurerm"
  version            = "0.11.0"
  architecture_name  = "custom"
  parent_resource_id = data.azapi_client_config.current.tenant_id
  location           = "swedencentral"
}
