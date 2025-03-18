terraform {
  cloud {

    organization = "White-Beard2303"

    workspaces {
      name = "Developement"
    }
  }
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.22.0"
    }
  }
}

provider "azurerm" {
  features {
  }

  subscription_id = var.sub_id
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret
}