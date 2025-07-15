module "iam_role" {
  source = "../../modules/iam-role"
  role_name = var.lambda_role_name
  tags      = var.tags
}

module "cloudwatch_log_group" {
  source = "../../modules/cloudwatch-log-group"
  log_group_name = var.log_group_name
  retention_in_days = var.log_group_retention
  tags      = var.tags
}

module "lambda_function" {
  source = "../../modules/lambda-function"
  function_name = var.lambda_function_name
  handler = var.lambda_handler
  runtime = var.lambda_runtime
  role_arn = module.iam_role.role_arn
  log_group_name = module.cloudwatch_log_group.log_group_name
  tags      = var.tags
}

module "api_gateway" {
  source = "../../modules/api-gateway"
  lambda_invoke_arn = module.lambda_function.invoke_arn
  tags      = var.tags
} 