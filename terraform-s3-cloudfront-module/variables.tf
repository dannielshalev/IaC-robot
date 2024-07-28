variable "aws_region" {
  description = "The AWS region where resources will be created."
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "versioning_enabled" {
  description = "Enable versioning for the S3 bucket."
  type        = bool
  default     = false
}

variable "cloudfront_role_name" {
  description = "The name of the IAM role for CloudFront."
  type        = string
}

variable "cloudfront_policy_name" {
  description = "The name of the IAM policy for CloudFront."
  type        = string
}

variable "cloudfront_oai_comment" {
  description = "Comment for the CloudFront Origin Access Identity."
  type        = string
}

variable "cloudfront_comment" {
  description = "Comment for the CloudFront distribution."
  type        = string
}

variable "default_root_object" {
  description = "The default root object for CloudFront."
  type        = string
  default     = "index.html"
}

variable "default_ttl" {
  description = "The default TTL for the CloudFront distribution."
  type        = number
  default     = 3600
}

variable "max_ttl" {
  description = "The max TTL for the CloudFront distribution."
  type        = number
  default     = 86400
}

variable "tags" {
  description = "Tags to apply to all resources."
  type        = map(string)
  default     = {}
}
