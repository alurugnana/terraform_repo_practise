resource "aws_instance" "sai" {
  ami           = "ami-0a0f1259dd1c90938"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop-all.id]

  tags = {
    Name = "HelloWorld"
    }
}
resource "aws_security_group" "roboshop-all" {
  name        = var.sg-name
  description = "Allow TLS inbound 443,80,22 traffic"
  /*ingress {
    description      = var.sg-description
    ports       = [443, 80, 22]
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block] */
  ingress {
    description = var.sg-description
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  ingress {
    description = var.sg-description
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  ingress {
    description = var.sg-description
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    # ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "roboshop-all-aws"
  }
}
