#--------------------------------------------------------------
# Public subnet resource definition
#--------------------------------------------------------------
resource "aws_subnet" "public_subnets" {
  count                   = length(split(",", var.global_public_subnets))
  vpc_id                  = aws_vpc.main.id
  cidr_block              = element(split(",", var.global_public_subnets), count.index)
  availability_zone       = element(split(",", var.global_availability_zones), count.index)
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc_oem}.public.${element(split(",", var.global_availability_zones), count.index)}"
      }

#  lifecycle {
 #   create_before_destroy = true
  #}
}

#--------------------------------------------------------------
# Private subnet resource definition
#--------------------------------------------------------------
resource "aws_subnet" "private_subnets" {
  count                   = length(split(",", var.global_private_subnets))
  vpc_id                  = aws_vpc.main.id
  cidr_block              = element(split(",", var.global_private_subnets), count.index)
  availability_zone       = element(split(",", var.global_availability_zones), count.index)
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.vpc_oem}.private.${element(split(",", var.global_availability_zones), count.index)}"
     
  }

  #lifecycle {
   # create_before_destroy = true
  #}
}