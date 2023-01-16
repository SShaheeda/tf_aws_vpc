variable "vpc_cidr" {
    description = " describe cidr range of vpc"
}   
variable "global_availability_zones" {
  description = "The AZs that the VPC will use"
}

variable "global_public_subnets" {
  description = "The CIDR blocks to be used for the public subnets"
}

variable "global_private_subnets" {
  description = "The CIDR blocks to be used for the private subnets"
}
variable "vpc_oem" {
  description = "The name of the VPC being created"
}