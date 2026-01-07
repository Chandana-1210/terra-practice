data "aws_ami" "joindevops"{
    owners=["498192040101"]
    most_recent=true

    fiter{
        name="name"
        value=["RHEL-9-DevOps-Practice"]
    }

    filter{
        name="root-device-type"
        value=["ebs"]
    }

    filter{
        name="virtualization"
        value=["hvm"]
    }
    
}

output "ami_id" {
    value=data.aws_ami.joindevops.id
}