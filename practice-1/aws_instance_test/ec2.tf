module "catalogue"{
    source = "../terra-aws-instance"
    #ami="ami-09c813fb71547fc4f"
    #instance_type="t3.micro"
    #sg_ids=["sg-02b681bc91c1ba4a8"]
    #tags={
    #   Name="module"
    #}

    ami_id=var.ami_id
    instance_type=var.instance_type
    sg_ids=var.sg_ids
    tags=var.tags

}

output "pub_ip"{
    value=module.catalogue.public_ip
}

output "private_ip"{
    value=module.catalogue.private_ip
}