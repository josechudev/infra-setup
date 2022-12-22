resource "digitalocean_kubernetes_cluster" "foo" {
  name    = "kubernetes-dev"
  region  = "nyc1"
  version = "1.22.8-do.1"

  node_pool {
    name       = "autoscale-worker-pool"
    size       = "s-2vcpu-2gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 5
  }
}