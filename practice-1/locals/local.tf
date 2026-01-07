locals{
    ami_id="ami-09c813fb71547fc4f"
    common_name="${var.project}.${var.environment}" #to refer one variable inside another variable
    ec2_tags=merge(
     var.ec2_tags,
    {Name="${local.common_name}-local-demo"} )
}