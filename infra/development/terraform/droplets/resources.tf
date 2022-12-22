resource "digitalocean_droplet" "docker-dev" {
  image  = "ubuntu-22-10-x64"
  name   = "docker-dev"
  region = "nyc1"
  size   = "s-2vcpu-4gb"
  ssh_keys = var.ssh_keys
  monitoring = true
  user_data = file("cloud-init.yaml")
}

