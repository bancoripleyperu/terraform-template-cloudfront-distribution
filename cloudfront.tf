resource "aws_cloudfront_origin_access_identity" "this" {}

module "cloudfront-distribution" {
  source  = "bancoripleyperu/cloudfront-distribution/aws"
  version = "0.0.6"

  domain_name            = module.s3-bucket.values.bucket_regional_domain_name
  origin_id              = module.s3-bucket.values.id
  target_origin_id       = module.s3-bucket.values.id
  aliases                = var.aliases
  default_root_object    = var.default_root_object
  origin_access_identity = aws_cloudfront_origin_access_identity.this.cloudfront_access_identity_path
  tags                   = var.tags

  lambda_function_association = var.lambda_function_association == false ? [] : [{
    event_type   = "viewer-response"
    lambda_arn   = module.lambda-function.values.qualified_arn
    include_body = false
  }]

  custom_error_response = [
    {
      error_code            = 400
      response_code         = 200
      response_page_path    = "/index.html"
      error_caching_min_ttl = 60
    },
    {
      error_code            = 403
      response_code         = 200
      response_page_path    = "/index.html"
      error_caching_min_ttl = 60
    },
    {
      error_code            = 404
      response_code         = 200
      response_page_path    = "/index.html"
      error_caching_min_ttl = 60
    }
  ]
}