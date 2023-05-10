terraform {
  required_version = "~> 1.4"

  required_providers {
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "~>1.19"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.5"
    }
  }
}
