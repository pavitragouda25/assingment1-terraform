variable "image_name" {
  description = "Docker image to use (e.g., ubuntu or centos)"
  type        = string
}

variable "volume_prefix" {
  description = "Prefix for the Docker volume name"
  type        = string
}

variable "network_name" {
  description = "Name of the Docker network"
  type        = string
}

variable "container_name_suffix" {
  description = "Suffix for the Docker container name"
  type        = string
}
