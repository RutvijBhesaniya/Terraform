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
  type    = list(any)
  default = ["a", "b", "c"]
}


variable "usersage" {
  type = map
  default = {
    gaurav = 20
    saurav = 30
  }
}

variable "usernamewithmap" {
  type = string
}



