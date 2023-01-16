#-------------------------------------------------------------
# Generic base security groups which may be useful
#-------------------------------------------------------------
resource "aws_security_group" "http_from_eht" {
  name        = "http_from_eht"
  description = "Allow inbound HTTP from eht IP ranges"
  vpc_id      = aws_vpc.main.id

  tags= {
    Name = "sg_group_http"
  }
}

resource "aws_security_group_rule" "allow_http_from_eht" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.http_from_eht.id
}

resource "aws_security_group" "https_from_eht" {
  name        = "https_from_eht"
  description = "Allow inbound HTTPS from eht IP ranges"
  vpc_id      = aws_vpc.main.id

  tags= {
   Name = "sg_group_https"
  }
}

resource "aws_security_group_rule" "allow_https_from_eht" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.https_from_eht.id
}
