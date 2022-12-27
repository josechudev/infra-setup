data "digitalocean_kubernetes_versions" "kubernetes_version" {
  version_prefix = "1.25."
}


resource "digitalocean_kubernetes_cluster" "kubernetes-dev" {
  name    = "kubernetes-dev"
  region  = "nyc3"
  version = data.digitalocean_kubernetes_versions.kubernetes_version.latest_version

  node_pool {
    name       = "autoscale-worker-pool"
    size       = "s-2vcpu-2gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 3
  }
}