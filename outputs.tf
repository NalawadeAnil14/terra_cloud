output "nginx_server" {
  value = "http://${aws_instance.myec2.public_ip}"
}

