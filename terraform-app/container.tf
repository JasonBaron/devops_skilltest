locals {
  dynamic_values = {
    for k, i in range(var.wordpress_instance_port, var.wordpress_instance_port + var.wordpress_instance_count, 1) : "wordpress-${k}" => i
  }

}
resource "docker_container" "wordpress" {
  for_each = local.dynamic_values
  name     = each.key
  image    = "wordpress:latest"
  restart  = "always"

  ports {
    internal = "80"
    external = each.value
  }
}