resource "aws_instance" "terraform" {
    ami =local.ami_id
    instance_type =var.instance_type
    vpc_security_group_ids =[aws_security_group.allow-all.id]
    # tags = merge(var.ec2_tags,
    # {Name="${local.common_name}-local-demo"})
    tags=local.ec2_tags
}

resource "aws_security_group" "allow-all"{
    name =var.sg_name
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

