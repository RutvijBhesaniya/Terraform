#terraform plan -var "username=RR"
variable "username" {
  type    = string
  default = "xyz"
}

variable "age" {
  type    = number
  default = "10"
}

variable "users" {
  type = list
}

