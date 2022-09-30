provider "azurerm" {
    features {}
}

module "resource_group" {
    source = "../modules/rg" 
}
   
module "storage_account" {
  source = "../modules/st"
  depends_on = [
    module.resource_group
  ]
  resource_group_name = module.resource_group.resource_group_name 
}

module "app_service_plan" {
  source = "../modules/afp"
  depends_on = [
    module.storage_account
  ]
  resource_group_name = module.resource_group.resource_group_name  
}

module "function_app" {
  source = "../modules/fa"
  depends_on = [
    module.app_service_plan
  ]
  resource_group_name = module.resource_group.resource_group_name
  app_service_id = module.app_service_plan.app_service_id
}