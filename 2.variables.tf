# defining variable 
# https://developer.hashicorp.com/terraform/language/values/variables
# 1. environment 
variable "environment_var" {
  type        = string
  description = "This is environment variable"
  #   default     = "dev01"
}

# 2. resource group name 
variable "resource_group_name_var" {
  type        = string
  description = "This is resource group name variable"
  #   default     = "rg01"
}

# 3. resrouce group location 
variable "resource_group_location_var" {
  type        = string
  description = "This is resource group location variable"
  #   default     = "westus"
}

# 4. storage account name 
variable "storage_account_name_var" {
  type        = string
  description = "This is storage account name variable"
}

# 5. storage account tier 
variable "storage_account_tier_var" {
  type        = string
  description = "This is storage account tier variable"
}

# 6. storage account replication type 
variable "storage_account_replication_type_var" {
  type        = string
  description = "This is storage account replication type"
}

# 7. storage account kind 
variable "storage_account_kind_var" {
  description = "This is storage account kind variable"
  type        = string
}

# 8. static website index document 
variable "static_website_index_document_var" {
  description = "This is static website index document variable"
  type        = string
}

# 9. static website error 404 document 
variable "static_website_error_404_document_var" {
  description = "This is static website error 404 document"
  type        = string
}