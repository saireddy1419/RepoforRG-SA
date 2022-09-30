resource "azurerm_app_service_plan" "fa" {
  name                = var.azurerm_app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = var.kind
  sku {
    tier = "standard"
    size = "S1"
  }
}