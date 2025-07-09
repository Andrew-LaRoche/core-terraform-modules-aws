#Output instance ID name and public IP address here to be displayed in the terminal,
#after deployment has occurred

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.this.id
}

output "instance_public_ip" {
    description = "The public IP address of this EC2 instance"
    value = aws_instance.this.public_ip
}