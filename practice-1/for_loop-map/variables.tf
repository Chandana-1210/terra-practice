variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "ec2_tags" {
    type = map(string)
    default = {
        Name = "terraform-1"
        Terraform = "true"        
    }
}

variable "sg_name" {
    default = "allow-all"
}

variable "instances" {
    default={
        "mongodb"="t3.micro"
        "mysql"="t3.small"
        "redis"="t3.micro"
    }
}

variable "zone_id"{
    default="Z0948150OFPSYTNVYZOY"
}

variable "domain_name"{
    default="daws-86.shop"
}
