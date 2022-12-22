output "docker_proplet_price_hourly" {
  value = digitalocean_droplet.docker-dev.price_hourly
}

output "docker_proplet_price_monthly" {
  value = digitalocean_droplet.docker-dev.price_monthly
}

output "docker_proplet_status" {
  value = digitalocean_droplet.docker-dev.status
}