# Change Instance Type 
variable "ec2_instance_type" {
    default = "t2.micro"
    type = string
}

# Change Storage 
variable "ec2_root_storage_size" {
    default = "15"
    type = number
  
}

variable "ec2_ami_id" {
    default = "ami-0f9de6e2d2f067fca"
    type = string
  
}