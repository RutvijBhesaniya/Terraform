output "printname" {
  value = "Hello World ${var.username} your age is ${var.age}"
}

output "userslist" {
  value = "First user is ${var.users[1]}"
}

//join function
output "userslistfunction" {
  value = join(",", var.users)
}


//upper function
output "usersupperfunction" {
  value = upper(var.users[0]) # Outputs the first user in uppercase
}

