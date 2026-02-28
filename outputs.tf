output "vpc_id" {
  description = "ID of the main VPC"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "ID of the app subnet"
  value       = aws_subnet.app_subnet.id
}

output "instance_id" {
  description = "ID of the app server EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP of the app server EC2 instance"
  value       = aws_instance.app_server.public_ip
}