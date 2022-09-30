variable "azurerm_app_service_plan_name" {
    default = "azure-functions-test-service-plan"
}

variable "location" {
    default = "uksouth"
}

variable "resource_group_name" {
    default = ""
}

variable "kind" {
    default = "FunctionApp"
}
