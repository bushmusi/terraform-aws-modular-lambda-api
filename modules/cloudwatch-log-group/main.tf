resource "aws_cloudwatch_log_group" "lambda" {
  name              = var.log_group_name
  retention_in_days = var.retention_in_days
  tags              = var.tags
}
