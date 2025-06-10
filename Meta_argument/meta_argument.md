# Dynamic Block or Meta Arguments
- If your have multiple argument or meta argument then in the outputs your have give * in instance argument like 
```
output "ec2_public_ip" {
    value = aws_instance.tf-instance[*].public_ip
}
```
# If your want create multiple instance with the same configuration 
```
count = 2 
```
# If your want to creaet multiple instances with different configuration 
- It is represent key and value. use each.value or each.key while call the for_each meta argument
```
for_each = tomap ({
    tf-micro-instance = "t2.micro"
    tf-medium-instance = "t2.medium"
})

Resource ..........{
    instance_type = each.value
}
tags{
    Name = each.key
}
```

# Depend on meta argument 
```
depends_on = [aws_security_group.my_security_group] #Single Depend
depends_on = [aws_security_group.my_security_group, aws_key_pair.my_key_pair] #Multiple Depend
```
