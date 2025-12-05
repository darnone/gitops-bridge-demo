module "gitops_bridge" {
  source = "gitops-bridge-dev/gitops-bridge/helm"

  cluster = {
    cluster_name = var.cluster_name
    environment  = var.environment
    metadata = merge(
      {
        repo_url  = var.gitops_repo
        repo_path = var.argocd_addons_apps_path
      },
      local.addons_metadata
    )
    addons = local.addons
  }

  apps = local.argocd_apps
}