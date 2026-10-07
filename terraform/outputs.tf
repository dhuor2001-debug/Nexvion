output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.web.id
}

output "public_ip" {
  description = "Public IP of the server"
  value       = aws_instance.web.public_ip
}

output "ssh_command" {
  description = "SSH command"
  value       = "ssh -i ~/.ssh/nexvion-key ubuntu@${aws_instance.web.public_ip}"
}

output "app_url" {
  description = "Application URL"
  value       = "http://${aws_instance.web.public_ip}"
}
