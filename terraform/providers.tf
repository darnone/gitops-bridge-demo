provider "kubernetes" {
  config_path    = var.kind_config_file
  config_context = var.kind_config_context
}

provider "helm" {
  kubernetes {
    config_path = var.kind_config_file # Points to the Minikube kubeconfig
  }
}