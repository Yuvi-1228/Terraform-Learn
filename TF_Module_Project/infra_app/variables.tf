variable "env" {
    description = "This is the environment for my infra app"
    type = string
  
}

variable "bucket_name" {
    description = "This is the bucket name variable "
    type = string  
}

variable "instance_count" {
    description = "This is variable for instance count"
    type = number
  
}

variable "instance_type" {
    description = "This is the variabke instance type"
    type = string
  
}

variable "ec2_ami" {
    description = "This is variable for ami id "
    type = string
  
}

variable "ec2_storage" {
    description = "This the storage variable"
    type = number
  
}

variable "db_hash_key" {
    description = "This is variable for db hash key or primary key "
    type = string
  
}