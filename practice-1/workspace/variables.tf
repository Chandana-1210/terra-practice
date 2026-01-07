variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    default={
        dev="t3.micro"
        prod="t3.small"
    }
    
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

variable "project" {
    default="roboshop"
}

variable "environment"{
    default={
        dev="dev"
        prod="prod"
    }
}
