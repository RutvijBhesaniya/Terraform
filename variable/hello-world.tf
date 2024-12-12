output "printname" {
  value = "Hello World ${var.username} your age is ${var.age}"
}

output "userslist" {
  value = "First user is ${var.users[1]}"
}

