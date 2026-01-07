variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "environment" {
    default="dev"
}

variable "project" {
    default="roboshop"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}


variable "sg_name" {
    default = "allow-all"
}

variable "ec2_tags" {
    type = map
    default = {
        Name = "terraform-1"
        Terraform = "true"        
    }
}

