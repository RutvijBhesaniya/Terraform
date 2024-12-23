variable "ports" {
  type = list(number)
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string

}

variable "aws_instance_tags" {
  type = string
}

variable "key_name" {
  type = string
}

variable "aws_security_group_name" {
  type = string
}

variable "aws_security_group_tag" {
  type = string

}
variable "aws_region" {
  type = string

}
variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}