
data "aws_ssm_parameter" "db_user" {
  name = "/${var.environment}/database/user"
}

data "aws_ssm_parameter" "db_password" {
  name = "/${var.environment}/database/password"
}


resource "aws_ssm_parameter" "test" {
  name        = "/${var.environment}/database/test"
  description = "DB user"
  type  = "String"
  value = "temp"
  overwrite = true
}


data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.environment}/network/vpc_id"
}

data "aws_ssm_parameter" "private_subnets" {
  name = "/${var.environment}/network/subnets/private"
}

# module "data" {
#   source   = "./modules/data"
#   db_name  = var.db_name
#   db_user  = data.aws_ssm_parameter.db_user.value
#   db_password  = data.aws_ssm_parameter.db_password.value
#   subnets  = data.aws_ssm_parameter.private_subnets.value
#   vpc_id  = data.aws_ssm_parameter.vpc_id.value
# }
