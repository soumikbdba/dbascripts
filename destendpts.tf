# Create a dest endpoint
resource "aws_dms_endpoint" "test1" {
      database_name = "example-two"
      endpoint_id   = "example-destination"
      endpoint_type = "target"
      engine_name   = "aurora"
      username      = "mysqlUser"
      password      = "random_password?"
      port          = 3306
      server_name   = "dms-ex-dest.cluster-abcdefghijkl.eu-central-1.rds.amazonaws.com"
      ssl_mode      = "none"
      tags          = { EndpointType = "destination" }
}