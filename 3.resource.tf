# resource group block 
# Create Resource Group
resource "azurerm_resource_group" "dev_rg01" {
  name     = var.resource_group_name_var
  location = var.resource_group_location_var
}

# Create Azure Storage account
# https://registry.terraform.io/providers/hashicorp/azurerm/4.21.1/docs/resources/storage_account
resource "azurerm_storage_account" "storage_account" {
  name                = "${var.storage_account_name_var}${var.resource_group_location_var}${var.resource_group_name_var}${random_string.myrandom.id}"
  resource_group_name = azurerm_resource_group.dev_rg01.name

  location                 = var.resource_group_location_var
  account_tier             = var.storage_account_tier_var
  account_replication_type = var.storage_account_replication_type_var
  account_kind             = var.storage_account_kind_var

}

# Configure the Storage Account for Static Website Hosting
# https://registry.terraform.io/providers/hashicorp/azurerm/4.21.1/docs/resources/storage_account_static_website
resource "azurerm_storage_account_static_website" "str_static_website" {
  storage_account_id = azurerm_storage_account.storage_account.id
  index_document     = var.static_website_index_document_var
  error_404_document = var.static_website_error_404_document_var
}