module "s3-bucket" {
  source  = "bancoripleyperu/s3-bucket/aws"
  version = "0.0.5"

  bucket = var.template_name == null ? random_string.this.result : var.template_name
  tags   = var.tags
}

resource "aws_s3_bucket_policy" "this" {
  bucket = module.s3-bucket.values.id
  policy = data.aws_iam_policy_document.this.json
}

data "aws_iam_policy_document" "this" {
  statement {

    principals {
      type        = "AWS"
      identifiers = [aws_cloudfront_origin_access_identity.this.iam_arn]
    }

    actions = [
      "s3:GetObject"
    ]

    resources = ["${module.s3-bucket.values.arn}/*"]
  }
}