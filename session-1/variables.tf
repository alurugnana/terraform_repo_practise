variable "sg-name" {
    type = string
    default = "roboshop-all-aws"
  
}

variable "sg-description" {
    type = string
    default = "allow TLS inbound traffic"
  
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}
