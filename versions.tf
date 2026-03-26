terraform {
  required_version = ">= 1.5"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  cloud {
    organization = "terraform_learn_all_cloud"

    workspaces {
      name = "Disconnected-Env"
    }
  }
}
