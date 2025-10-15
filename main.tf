terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}


provider "github" {
  token = var.user_token
  owner = var.organization
}



