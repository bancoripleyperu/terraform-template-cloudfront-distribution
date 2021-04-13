module "lambda-function" {
  source  = "bancoripleyperu/lambda-function/aws"
  version = "0.0.2"

  function_name = random_string.this.result
  handler       = "index.handler"
  runtime       = "nodejs12.x"
  source_dir    = "./app/"
  role          = module.iam-role.values.arn
  publish       = true
  tags          = var.tags
}

resource "aws_lambda_permission" "this" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = module.lambda-function.values.function_name
  principal     = "events.amazonaws.com"
}