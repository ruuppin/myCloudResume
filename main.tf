terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.49.0"
    }
  }
}

backend "remote" {
  # The name of your Terraform Cloud organization.
  organization = "justniikupitaa"

  workspaces {
    name = "myCloudResume"

  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}
