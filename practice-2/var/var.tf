variable "ami_id" {
    default="ami-09c813fb71547fc4f"
}

variable "instance_type"{
    default="t3.micro"
}

variable "ec2_tags"{
    default={
       Name="terraform-1"
       terraform="true"         
    }
}

variable "sg_name"{
    default="allow-all"
}

variable "ingress_from_port"{
    default=0
}

variable "egress_from_port"{
    default=0
}

variable "ingress_to_port"{
    default=0
}

variable "egress_to_port"{
    default=0
}

variable "cidr"{
    default=["0.0.0.0/0"]
}