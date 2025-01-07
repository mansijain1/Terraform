# Pulls the image
resource "docker_image" "nginx_image" {
  name = "nginx"
}
 
# Create a container
resource "docker_container" "container1" {
  image = docker_image.nginx_image.latest
  name  = "nginx"
}