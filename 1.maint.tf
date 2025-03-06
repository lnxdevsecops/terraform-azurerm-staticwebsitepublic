# terraform block 
# https://developer.hashicorp.com/terraform/language/terraform
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    # azure cloud provider 
    # https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
    azurerm = {
      version = ">= 4.0.0"
      source  = "hashicorp/azurerm"
    }
    # random provider
    # https://registry.terraform.io/providers/hashicorp/random/latest/docs
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }
}


# provider block 
# https://developer.hashicorp.com/terraform/language/providers/configuration
provider "azurerm" {
  features {}
  subscription_id = "2e1905fb-77fd-4797-b6c4-f56b9b48e011"

}

resource "random_string" "myrandom" {
  length  = 6
  upper   = false
  special = false
  numeric = false
}