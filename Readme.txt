----------------------------Commands------------------------

terraform plan --> To see the how will be the output
terraform fmt  --> To format all the file structure


terraform plan -var "username="RR" --> To see the how will be the output with variable
terraform plan -var "username="RR" -var "age=10" --> To see the how will be the output with variable
terraform plan -var 'users=["a","b","c"]'

terraform plan  -var-file=development.tfvars  --> If i have to use another variable file 

terraform init --> It will download the provider dependencies(for eg --> github, aws, azure)

terraform providers --> It will show all the providers

terraform apply --auto-approve

terraform validate

terraform destroy
terraform destroy --target github_repository.terraform-second-repo --> If you have to delete one provider only set target 

terraform show --> It will show the .tf file

terraform refresh --> If any user has changes and pull then it will take the pull and it will show the changes in tfstate file

terraform console --> You can interupt into console and check the variables value or any 

terraform state list --> If the state is still locked, and you want to check the status of your resources before destroying them, you can inspect the state of your infrastructure with


----------------------------Notes------------------------


--> The .tf files will be loaded in alpha orders

terraform.tfstate -->  Stores the resource info in this after terraform apply cmd
terraform.tfstate.backup --> Stores the previous state (before terraform apply)