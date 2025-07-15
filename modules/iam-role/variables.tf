variable "role_name" {
  description = "IAM role name for Lambda."
  type        = string
}

variable "tags" {
  description = "Tags to apply to resources."
  type        = map(string)
  default     = {}
}
