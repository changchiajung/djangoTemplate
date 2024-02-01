module "aws" {
  source = "../aws"
}

resource "grafana_data_source" "cloudwatch" {
  type = "cloudwatch"
  name = "tf-Cloudwatch"

  json_data_encoded = jsonencode({
    defaultRegion = module.aws.aws_region
    authType      = "keys"
  })

  secure_json_data_encoded = jsonencode({
    access_key = module.aws.cw_role_access_key
    secret_key = module.aws.cw_role_secret_access_key
  })

  # Add additional configuration for your CloudWatch data source
}
