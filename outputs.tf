output "bucket" {
  description = "S3 bucket values"
  value       = module.s3-bucket.values
}

output "cloudfront" {
  description = "Cloudfront distribution values"
  value       = module.cloudfront-distribution.values
}

output "lambda" {
  description = "Lambda values"
  value       = module.lambda-function.values
}