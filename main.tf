
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}


provider "docker" {}

resource "random_id" "hex" {
  byte_length = 4
}

resource "docker_network" "custom_network" {
  name = var.network_name
}

resource "docker_volume" "custom_volume" {
  name = "${var.volume_prefix}_volume"
}


resource "docker_container" "custom_container" {
  name  = "${var.container_name_suffix}-${random_id.hex.hex}"
  image = var.image_name

  command = ["tail", "-f", "/dev/null"]


  ports {
    internal = 8080
    external = 25678
  }

  volumes {
    volume_name    = docker_volume.custom_volume.name
    container_path = "/data"
  }

  networks_advanced {
    name = docker_network.custom_network.name
  }

  depends_on = [
    docker_network.custom_network,
    docker_volume.custom_volume,
    random_id.hex
  ]
}



