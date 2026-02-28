variable "subnet_cidr_block" {
  description = "cidr block for app subnet"
  type = string
}

variable "vpc_cidr_block" {
  description = "cidr block for vpc"
  type = string
}

variable "ami" {
  description = "ami id for ec2"
  type = string
}
variable "instance_type" {
  description = "instance type for ec2"
  type = string
}