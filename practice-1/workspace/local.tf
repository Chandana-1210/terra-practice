locals{
    environment=lookup(var.environment,terraform.workspace)
    #common_name="${var.project}.${terraform.workspace}"
    common_name="${var.project}.${local.environment}"
    common_tags= {
        Name=var.project
        terraform="true"
    }
}