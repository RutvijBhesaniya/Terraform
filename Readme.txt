----------------------------Commands------------------------

terraform plan --> To see the how will be the output
terraform fmt  --> To format all the file structure


terraform plan -var "username="RR" --> To see the how will be the output with variable
terraform plan -var "username="RR" -var "age=10" --> To see the how will be the output with variable
terraform plan -var 'users=["a","b","c"]'



Notes

--> The .tf files will be loaded in alpha orders