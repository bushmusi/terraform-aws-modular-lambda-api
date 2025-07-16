variable "aws_region" {
  description = "AWS region."
  type        = string
  default     = "us-east-1"
}

variable "aws_access_key" {
  description = "AWS access key."
  type        = string
}

variable "aws_secret_key" {
  description = "AWS secret key."
  type        = string
}

variable "lambda_role_name" {
  description = "IAM role name for Lambda."
  type        = string
  default     = "chapa-lambda-role"
}

variable "log_group_name" {
  description = "CloudWatch log group name."
  type        = string
  default     = "/aws/lambda/chapa-lambda"
}

variable "log_group_retention" {
  description = "Log group retention in days."
  type        = number
  default     = 7
}

variable "lambda_function_name" {
  description = "Lambda function name."
  type        = string
  default     = "chapa-lambda"
}

variable "lambda_handler" {
  description = "Lambda handler."
  type        = string
  default     = "index.handler"
}

variable "lambda_runtime" {
  description = "Lambda runtime."
  type        = string
  default     = "nodejs18.x"
}

variable "tags" {
  description = "Tags to apply to all resources."
  type        = map(string)
  default     = {
    Environment = "prod"
    Project     = "chapa"
    provisioned = "terraform"
  }
} 