locals {
  #cluster_name = "gitops-demo"
  #environment  = "dev"
  #gitops_repo  = "https://github.com/markbosire/gitops-repo"

  # OSS addons configuration
  oss_addons = {
    enable_kube_prometheus_stack = true
    #enable_prometheus_adapter    = true  
  }

  # Merge all addon categories
  addons = merge(
    local.oss_addons,
    {
      kubernetes_version = var.kubernetes_version # Add the k8s version you're using
    }
  )

  # Metadata for addons
  addons_metadata = {
    cluster_name         = var.cluster_name
    environment          = var.environment
    addons_repo_url      = var.gitops_repo
    addons_repo_basepath = ""
    addons_repo_path     = var.addons_repo_path
    addons_repo_revision = var.addons_repo_target_revision
  }

  # Define ArgoCD applications - including the addons ApplicationSet
  argocd_apps = {
    #nginx = file("${path.module}/../apps/nginx.yaml")
    addons = file("${path.module}/../apps/addons.yaml") # Important - this is needed
  }
}