variable "cluster_name" {
  description = "The name of the cluster."
  type        = string
}

variable "environment" {
  description = "The minikube kubernetes context."
  type        = string
}

# variable "git_token" {
#   description = "Git token for interacting with Git"
#   type        = string
#   sensitive   = true
# }

variable "git_username" {
  description = "The username associated with the git_token."
  type        = string
}

variable "kind_config_file" {
  description = "The minikube kubernetes config file."
  type        = string
}

variable "kind_config_context" {
  description = "The minikube kubernetes context."
  type        = string
}

variable "kubernetes_version" {
  description = "The version of kubernetes."
  type        = string
}

variable "gitops_repo" {
  description = "The git repo that Argo CD will deploy."
  type        = string
}

variable "addons_repo_path" {
  description = "The git repo path to addons."
  type        = string
}

variable "addons_repo_target_revision" {
  description = "The git repo branch that Argo CD will use."
  type        = string
}

variable "argocd_addons_apps_path" {
  description = "The git repo path to Argo CD applications and applicationSets."
  type        = string
}