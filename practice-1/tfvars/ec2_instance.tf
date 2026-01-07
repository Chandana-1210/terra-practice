resource "aws_instance" "terraform" {
    ami =var.ami_id
    instance_type =var.instance_type
    vpc_security_group_ids =[aws_security_group.allow-all.id]
    tags = merge(
        local.common_tags,
        {Name="${local.common_name}-tfvars-multi-env"}
    )
}

resource "aws_security_group" "allow-all"{
    name ="${local.common_name}-tfvars-multi-env"
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]    
    }
    tags = {
        Name ="allow-all"
    }

}

