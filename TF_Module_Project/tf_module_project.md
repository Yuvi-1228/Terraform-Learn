# Module Project 
- This is terraform module project where we can deploy AWS resources with the help of module in different environment.

# Scenario 
- There are three environment : Dev / Prod / Stage
- In Dev : There is one EC2 with t2-micro instance type , S3 and Dyanamodb
- In Prod : There is two EC2 instance with t2-micro and t2-medium, oen S3 and Dyanamodb
- In stage : There is one EC2 , S3 and One DyanamoDB. 

# Process 
- First create application folder and make a tf file for EC2, S3 , dyanamo db and variable 
- Second create folder outside of application folder and make a file for main , provider and terraform 
- In main file call variable from variable.tf file 
- then apply it 