variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
}

variable "sg_ids" {
    default = ["sg-02b681bc91c1ba4a8"]
}

variable "instance_type" {
    default = "t3.micro"
    #default="t3.2xlarge"
}

variable "tags" {
    default = {
        Name="module-demo"
    }
}