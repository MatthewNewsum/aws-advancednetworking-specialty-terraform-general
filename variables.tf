# variable "accountId" {
#   type        = string
#   description = "Current Account Id"
# }

variable "aws_region" {
  type        = string
  description = "AWS region for deployment of resources"
  default     = "us-east-1"
}

# variable "environment" {
#   type        = string
#   description = "Environment being deployed to"
# }