module "iam-role" {
  source  = "bancoripleyperu/iam-role/aws"
  version = "0.0.4"

  aws_services = ["lambda.amazonaws.com", "edgelambda.amazonaws.com"]
  name         = var.template_name == null ? random_string.this.result : var.template_name
  tags         = var.tags
}

resource "aws_iam_role_policy_attachment" "this" {
  role       = module.iam-role.values.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}