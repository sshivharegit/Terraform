terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "5.10.0"
    }
  }
}

provider "github" {
  token = ""
}

resource "github_repository" "Terraform" {
  name        = "Terraform"
  description = "Repository for all the terraform files for resources"

  visibility = "public"
}