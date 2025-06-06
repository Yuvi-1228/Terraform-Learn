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
- Initilazation <terraform init> after init you will get environment 
- Validate your terraform code <terraform validate>
- Plan the terraform : to verify the output from main.tf <terrafom plan>
- Now apply terraform <terraform apply>
- If you want to destroy your IaC configuration <terraform destroy>

# Initialization Terraform 
```
terraform init
```
# Validate Terraform 
```
terraform validate
```
# Plan the terraform code 
```
terraform plan
```
# apply the terraform code 
```
terraform apply
```
# delete the terraform code 
```
terraform destroy 
```
# Automatic approve yes during apply terraform code 
```
terraform apply -auto-apporve
```

