module "this" {
  source = "../../"

  aliases                     = ["aswedf.sandboxs.net"]
  lambda_function_association = false

  tags = {
    Project = "titan"
  }
}