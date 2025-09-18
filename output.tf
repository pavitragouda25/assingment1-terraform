output "container_ip" {
  description = "IP address of the Docker container"
  value       = docker_container.custom_container.ip_address
  depends_on  = [docker_container.custom_container]
}
