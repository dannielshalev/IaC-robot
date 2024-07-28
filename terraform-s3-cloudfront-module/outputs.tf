output "bucket_arn" {
  description = "The ARN of the S3 bucket."
  value       = aws_s3_bucket.this.arn
}

output "cloudfront_distribution_id" {
  description = "The ID of the CloudFront distribution."
  value       = aws_cloudfront_distribution.this.id
}

output "cloudfront_domain_name" {
  description = "The domain name of the CloudFront distribution."
  value       = aws_cloudfront_distribution.this.domain_name
}

output "iam_role_arn" {
  description = "The ARN of the IAM role for CloudFront."
  value       = aws_iam_role.cloudfront_access.arn
}

output "iam_policy_arn" {
  description = "The ARN of the IAM policy for CloudFront."
  value       = aws_iam_policy.cloudfront_access.arn
}
