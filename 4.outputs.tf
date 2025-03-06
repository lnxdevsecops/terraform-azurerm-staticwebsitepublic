# Output variable definitions
# output-1: resource group id 
output "resource_group_id_out" {
  description = "resource group id"
  value       = azurerm_resource_group.dev_rg01.id
}

# output-2: resource group name 
output "resource_group_name_out" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.dev_rg01.name
}

# output-3: resource group location 
output "resource_group_location_out" {
  description = "resource group location"
  value       = azurerm_resource_group.dev_rg01.location
}

# output-4: storage account name 
output "storage_account_id_out" {
  description = "storage account id"
  value       = azurerm_storage_account.storage_account.id
}

# output-5: storage account name
output "storage_account_name_out" {
  description = "storage account name"
  value       = azurerm_storage_account.storage_account.name
}

# output-6: static website url 
output "static_website_url_out" {
  description = "The URL of the static website"
  value       = azurerm_storage_account.storage_account.primary_web_endpoint
}