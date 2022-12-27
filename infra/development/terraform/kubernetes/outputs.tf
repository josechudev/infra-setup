output "maintenance_policy" {
  value = digitalocean_kubernetes_cluster.kubernetes-dev.maintenance_policy
}

output "cluster_status" {
  value = digitalocean_kubernetes_cluster.kubernetes-dev.status
}