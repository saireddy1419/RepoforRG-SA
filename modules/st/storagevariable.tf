variable "storage_name" {
    description = "name of the storage account"
    default = "yakkantisai1419"
}

variable "location" {
    description = "location where the storage account is going to create"
    default = "uksouth"  
}

variable "account_tier" {
    default = "Standard"
}

variable "account_replication_type" {
    default = "GRS"
}

variable "tags" {
    description = "tags for storage account"
    type = map(string)
    default = {
      "environment" = "test"
    }
}

variable "resource_group_name" {
    default = ""
  
}