# Create a source endpoint
resource "aws_dms_endpoint" "test" {
      database_name               = "example-one"
      endpoint_id                 = "example-source"
      endpoint_type               = "source"
      engine_name                 = "aurora-postgresql"
      extra_connection_attributes = "heartbeatFrequency=1;"
      username                    = "postgresqlUser"
      password                    = "random_password#"
      port                        = 5432
      server_name                 = "dms-ex-src.cluster-abcdefghijkl.eu-central-1.rds.amazonaws.com"
      ssl_mode                    = "none"
      tags                        = { EndpointType = "source" }
}