variable "lambda_invoke_arn" {
  description = "Lambda function invoke ARN."
  type        = string
}

variable "tags" {
  description = "Tags to apply to resources."
  type        = map(string)
  default     = {}
}