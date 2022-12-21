terraform {
  backend "azurerm" {
    resource_group_name  = "Terraform-State-File"
    storage_account_name = "mytfstatefile"
    container_name       = "tfstate"
    key                  = "terraform132.tfstate"
  }
}

terraform {
  required_version = "1.3.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.35.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.3"
    }
  }
}

provider "azurerm" {
  features {
  }
}

provider "random" {
  # Configuration options
}
