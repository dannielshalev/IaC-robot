module "s3_cloudfront" {
  source = "../terraform-s3-cloudfront-module"

  aws_region             = "us-east-1"
  bucket_name            = "demo"
  versioning_enabled     = true
  cloudfront_role_name   = "cloudfront-access-role"
  cloudfront_policy_name = "cloudfront-access-policy"
  cloudfront_oai_comment = "Origin Access Identity for CloudFront"
  cloudfront_comment     = "CloudFront distribution for S3 bucket"
  default_root_object    = "index.html"
  default_ttl            = 3600
  max_ttl                = 86400
  tags                   = {
    Environment = "dev"
    Project     = "demo"
  }
}
