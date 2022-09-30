variable "function_app_name" {
    default = "saireddyv-azure-functions"
}
variable "location" {
    default = "uksouth" 
}

variable "resource_group_name" {
  default = ""
}
variable "storage_name" {
    default = "yakkantisai1419"
}
variable "app_service_id" {
  default = "azurerm_app_service_plan.fa.id"
}

variable "storage_account_access_key" {
    default = "azurerm_storage_account.st.primary_access_key"
  
}