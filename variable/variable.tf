#terraform plan -var "username=RR"
variable "username" {
  type = string
}

variable "age" {
  type = number
}

variable "users" {
  type    = list(any)
  default = ["a", "b", "c"]
}


variable "usersage" {
  type = map(any)
  default = {
    gaurav = 20
    saurav = 30
  }
}

variable "usernamewithmap" {
  type = string
}



