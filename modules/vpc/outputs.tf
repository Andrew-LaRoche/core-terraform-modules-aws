output "vpc_id" {
  value = aws_vpc.this.id
}

output "subnet_id" {
  value = aws_subnet.this.id
}   

output "internet_gateway_id" {
  value = aws_internet_gateway.this.id
}