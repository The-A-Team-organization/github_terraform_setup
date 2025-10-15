resource "github_repository_file" "readme_md" {
  repository          = github_repository.iluminati.name
  branch              = github_branch.workflow_config.branch
  overwrite_on_create = true
  file                = "README.md"
  content             = file("files_to_parse/README.md")
  commit_message      = "Adding generic readme"
}

resource "github_repository_file" "gitignore" {
  repository     = github_repository.iluminati.name
  branch         = github_branch.workflow_config.branch
  file           = ".gitignore"
  content        = "**/*.tfstate"
  commit_message = "Creating gitignore file"
}

resource "github_repository_file" "pr_template" {
  repository     = github_repository.iluminati.name
  branch         = github_branch.workflow_config.branch
  file           = ".github/pull_request_template.md"
  content        = file("files_to_parse/pull_request_template.md")
  commit_message = "Creating pull_request_template.md file"
}

resource "github_repository_file" "cspell" {
  repository     = github_repository.iluminati.name
  branch         = github_branch.workflow_config.branch
  file           = ".github/workflows/cspell.yml"
  content        = file("files_to_parse/cspell.yml")
  commit_message = "Adding cspell linter"
}

resource "github_repository_file" "cspell_json" {
  repository     = github_repository.iluminati.name
  branch         = github_branch.workflow_config.branch
  file           = ".cspell.json"
  content        = file("files_to_parse/cspell.json")
  commit_message = "Adding cspell.json file"
}

resource "github_repository_file" "gitleaks" {
  repository     = github_repository.iluminati.name
  branch         = github_branch.workflow_config.branch
  file           = ".pre-commit-config.yaml"
  content        = file("files_to_parse/pre-commit-config.yaml")
  commit_message = "Adding pre-commit config for gitleaks"
}

resource "github_repository_file" "pretier" {
  repository     = github_repository.iluminati.name
  branch         = github_branch.workflow_config.branch
  file           = ".github/workflows/prettier.yml"
  content        = file("files_to_parse/prettier.yml")
  commit_message = "Adding prettier linter"
}

resource "github_repository_pull_request" "example" {
  base_repository = github_repository.iluminati.name
  base_ref        = "main"
  head_ref        = github_branch.workflow_config.branch
  title           = "TAT-0: set up basic config for repo"
  body            = file("files_to_parse/pr_description.md")
}
