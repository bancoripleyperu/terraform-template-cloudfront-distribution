module "this" {
  source = "../../"

  aliases                     = ["aswedf.sandboxs.net"]
  lambda_function_association = false

  viewer_certificate = {
    cloudfront_default_certificate = false
    acm_certificate_arn            = "arn:aws:acm:us-east-1:594671381337:certificate/6341e7e4-3686-423d-9d98-1d2491b6f652"
    ssl_support_method             = "sni-only"
  }

  tags = {
    Project = "titan"
  }
}