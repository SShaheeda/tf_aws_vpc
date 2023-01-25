output "public_subnets" {
  value = join(",", aws_subnet.public_subnets.*.id)
}

output "private_subnets" {
  value = join(",", aws_subnet.private_subnets.*.id)
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "sg_https_oem" {
  value = aws_security_group.https_from_eht.id 
}

output "sg_http_oem" {
  value = aws_security_group.http_from_eht.id
}