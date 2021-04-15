variable "template_name" {
  description = "CodePipeline template name"
  type        = string
  default     = null
}

variable "aliases" {
  description = "Domain aliases for the cloudfront distribution."
  type        = list(string)
  default     = []
}

variable "default_root_object" {
  description = "Default root object."
  type        = string
  default     = "index.html"
}

variable "viewer_certificate" {
  description = "The SSL configuration for this distribution."
  type        = any
  default = {
    cloudfront_default_certificate = true
  }
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the function."
  type        = map(string)
  default     = {}
}

variable "lambda_function_association" {
  description = "(Optional) Lambda function association."
  type        = bool
  default     = true
}