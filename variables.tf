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

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the function."
  type        = map(string)
  default     = {}
}