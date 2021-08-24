output "ip" {
  value = [for i in docker_container.wordpress : i.ip_address]
}