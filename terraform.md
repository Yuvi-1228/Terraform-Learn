# What is terraform?
# Why learn Terraform?
# Different between Ansible Vs Terraform

# Terraform extension 
```
.tf
```
# Basic Syntax 
```
<block> <Parameter> {
    [argument]
}
```
# What is block?
- block = resouces [To create infrastructure/resources through terraform write resources in block section]
- block = output [ To show output in block through terraform create variable block]
# What is Parameter? 


# What is Argument?


# For example 
```
Resources <block> aws_instance <Paramenter> <Instance-name>{
    #Agrument 
    instances_type:
    ami_id:

}
```

# Terraform Workflow 
- Create  file  <main.tf>
- Initialization the terraform code after init you will get environment 
- then you can check or validate the terraform code. [ If you want to check your syntax]
- Now, Plan to deploy terraform code it will show you output of your terraform code 
- After plan you can apply terraform it will provision your terraform code.
- At last you can delete resources by using `terraform destroy` command. 

# Step to use terraform 
## Initialization Terraform 
```
terraform init
```
## Validate Terraform 
```
terraform validate
```
##Plan the terraform code 
```
terraform plan
```
## Apply the terraform code 
```
terraform apply
```
## Delete the terraform code 
```
terraform destroy 
```
## Automatic approve yes during apply terraform code 
```
terraform apply -auto-approve
```

# What is Interpolation
- 