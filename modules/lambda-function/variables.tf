variable "function_name" {
  description = "Lambda function name."
  type        = string
}

variable "handler" {
  description = "Lambda handler."
  type        = string
}

variable "runtime" {
  description = "Lambda runtime."
  type        = string
}

variable "role_arn" {
  description = "IAM role ARN for Lambda."
  type        = string
}

variable "log_group_name" {
  description = "CloudWatch log group name."
  type        = string
}

variable "tags" {
  description = "Tags to apply to resources."
  type        = map(string)
  default     = {}
}