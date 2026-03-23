terraform {
  required_version = ">= 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/azurerm"
      version = "~> 6.0"
    }
  }

  cloud {
    organization = "terraform_learn_all_cloud"

    workspaces {
      name = "Disconnected-Env"
    }
  }
}
