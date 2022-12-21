terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "5.10.0"
    }
  }
}

provider "github" {
  token = "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"
}

resource "github_repository" "Terraform" {
  name        = "Terraform"
  description = "Repository for all the terraform files for resources"

  visibility = "public"
}