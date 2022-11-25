terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.23.1"
    }
  }
}

provider "docker" {
	host = "unix:///var/run/docker.sock"
}

resource "docker_image" "nginx" {
  name = "nginx:1.11-alpine"
}

resource "docker_container" "nginx-server" {
  name = "nginx-server-1"
  image = docker_image.nginx.latest
  ports {
    internal = 80
    external = 80
}
}
