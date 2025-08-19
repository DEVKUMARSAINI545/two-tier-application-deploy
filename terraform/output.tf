output "flask_app_public_ip" {
  value = "http://${aws_instance.flask-app.public_ip}:5000"
}

output "flask_app_public_dns" {
  value = aws_instance.flask-app.public_dns
}