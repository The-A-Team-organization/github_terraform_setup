resource "github_repository" "iluminati" {
  name        = var.repo_name
  description = "This repo created by Terraform"
  visibility  = "public"
  auto_init   = true
}

resource "github_branch_protection" "protect_main" {
  repository_id                   = github_repository.iluminati.node_id
  pattern                         = "main"
  allows_deletions                = false
  require_conversation_resolution = true
  required_pull_request_reviews {
    dismiss_stale_reviews      = true
    require_last_push_approval = true
  }
}

resource "github_branch" "workflow_config" {
  repository = github_repository.iluminati.name
  branch     = "workflow_config"
}
