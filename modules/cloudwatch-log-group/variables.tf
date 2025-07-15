variable "log_group_name" {
  description = "CloudWatch log group name."
  type        = string
}

variable "retention_in_days" {
  description = "Log group retention in days."
  type        = number
}

variable "tags" {
  description = "Tags to apply to resources."
  type        = map(string)
  default     = {}
}