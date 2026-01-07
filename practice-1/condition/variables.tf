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

variable "environment" {
    default = "dev"
}

