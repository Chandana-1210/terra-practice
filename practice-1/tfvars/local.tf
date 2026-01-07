locals{
    common_name="${var.project}.${var.environment}"
    common_tags= {
        Name=var.project
        terraform="true"
    }
}