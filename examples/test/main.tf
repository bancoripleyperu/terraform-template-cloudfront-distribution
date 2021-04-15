module "this" {
  source = "../../"

  lambda_function_association = false

  tags = {
    Project = "titan"
  }
}