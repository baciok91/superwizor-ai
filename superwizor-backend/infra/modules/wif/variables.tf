variable "project_id" {
  type = string
}

variable "github_repo" {
  type        = string
  description = "Format: owner/repo np. baciok91/superwizor-backend"
  default     = "baciok91/superwizor-backend"
}
