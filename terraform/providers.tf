terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.40.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "Sourin-Alu-Candidate"
    storage_account_name = "tfstateacct"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}