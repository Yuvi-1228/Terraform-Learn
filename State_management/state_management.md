# State Management 
- If you want to know about state of AWS so we can check terraform tfstate file.
- you can simply update or refersh terraform tfstate file by using 
```
terraform refresh
```

# check your resources list 
```
terraform state list 
```
# You can also check state of specific resource 
```
terraform state show aws_key_pair.mykeypair <resource_type.resource_name> 
``` 
# If you do not want to maintain state 
```
terraform state rm aws_key_pair.mykeypair
```
# If you want to recover or import resources from AWS 
```
terraform state import aws_key_pair.mykeypair <key_id_from_AWS>
```
# To import existing ec2 instance 
```
terraform import aws_instance.my_instance <instance_id>
```
