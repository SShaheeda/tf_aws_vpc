output "public_subnets" {
  value = join(",", aws_subnet.public_subnets.*.id)
}

output "private_subnets" {
  value = join(",", aws_subnet.private_subnets.*.id)
}

output "vpc_id" {
  value = aws_vpc.main.id
}