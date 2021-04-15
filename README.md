## Usage

```hcl
module "this" {
  source  = "bancoripleyperu/cloudfront-distribution/template"
  version = "0.0.1"

  lambda_function_association = false
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_archive"></a> [archive](#requirement\_archive) | >= 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.19 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.19 |
| <a name="provider_random"></a> [random](#provider\_random) | >= 3.1.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloudfront-distribution"></a> [cloudfront-distribution](#module\_cloudfront-distribution) | bancoripleyperu/cloudfront-distribution/aws | 0.0.6 |
| <a name="module_iam-role"></a> [iam-role](#module\_iam-role) | bancoripleyperu/iam-role/aws | 0.0.4 |
| <a name="module_lambda-function"></a> [lambda-function](#module\_lambda-function) | bancoripleyperu/lambda-function/aws | 0.0.2 |
| <a name="module_s3-bucket"></a> [s3-bucket](#module\_s3-bucket) | bancoripleyperu/s3-bucket/aws | 0.0.5 |

## Resources

| Name | Type |
|------|------|
| [aws_cloudfront_origin_access_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_origin_access_identity) | resource |
| [aws_iam_role_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_lambda_permission.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission) | resource |
| [aws_s3_bucket_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [random_string.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [aws_iam_policy_document.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aliases"></a> [aliases](#input\_aliases) | Domain aliases for the cloudfront distribution. | `list(string)` | `[]` | no |
| <a name="input_default_root_object"></a> [default\_root\_object](#input\_default\_root\_object) | Default root object. | `string` | `"index.html"` | no |
| <a name="input_lambda_function_association"></a> [lambda\_function\_association](#input\_lambda\_function\_association) | (Optional) Lambda function association. | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags to assign to the function. | `map(string)` | `{}` | no |
| <a name="input_template_name"></a> [template\_name](#input\_template\_name) | CodePipeline template name | `string` | `null` | no |
| <a name="input_viewer_certificate"></a> [viewer\_certificate](#input\_viewer\_certificate) | The SSL configuration for this distribution. | `any` | <pre>{<br>  "cloudfront_default_certificate": true<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket"></a> [bucket](#output\_bucket) | S3 bucket values |
| <a name="output_cloudfront"></a> [cloudfront](#output\_cloudfront) | Cloudfront distribution values |
| <a name="output_lambda"></a> [lambda](#output\_lambda) | Lambda values |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Test

```sh
gem install bundler
bundle install --jobs 4 --retry 3
bundle exec kitchen test
```

## Doc

```sh
pre-commit run -a
```

## Autor
 
Module managed by [Banco Ripley Peru](https://ripley.com.pe)