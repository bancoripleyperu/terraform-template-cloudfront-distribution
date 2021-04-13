output "cloudfront" {
  description = "Name required for tests"
  value       = module.this.cloudfront.id
}

output "bucket" {
  description = "Name required for tests"
  value       = module.this.bucket.id
}

output "lambda" {
  description = "Name required for tests"
  value       = module.this.lambda.id
}