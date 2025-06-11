module "dev-tf-infra" {
    source = "./infra_app"
    env = "dev"
    bucket_name = "tf-infra-bucket"
    instance_count = 1
    instance_type = "t2.micro"
    ec2_ami = "ami-0f9de6e2d2f067fca" # Ubuntu Linux
    ec2_storage = 10
    db_hash_key = "StudentID" 
}

module "prod-tf-infra" {
    source = "./infra_app"
    env = "prod"
    bucket_name = "tf-infra-bucket"
    instance_count = 2
    instance_type = "t2.medium"
    ec2_ami = "ami-0f9de6e2d2f067fca" # Ubuntu Linux
    ec2_storage = 10
    db_hash_key = "StudentID" 
}

module "stg-tf-infra" {
    source = "./infra_app"
    env = "stg"
    bucket_name = "tf-infra-bucket"
    instance_count = 1
    instance_type = "t2.small"
    ec2_ami = "ami-0f9de6e2d2f067fca" # Ubuntu Linux
    ec2_storage = 10
    db_hash_key = "StudentID" 
}