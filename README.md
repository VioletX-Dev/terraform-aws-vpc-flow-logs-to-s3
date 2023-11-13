## AWS VPC Flow Logs + S3 bucket for logs

This module enables VPC Flow Logs for a given list of VPC IDs and store the logs in a S3 bucket.

## Usage:

```
module "example" {
    source = "github.com/VioletX-Dev/terraform-aws-vpc-flow-logs-to-s3?ref=main"

    company     = "VioletX"
    vpc_id_list = ["vpc_id_1", "vpc_id_2", "vpc_id_3"]
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_flow_log.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/flow_log) | resource |
| [aws_s3_bucket.flow_logs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_company"></a> [company](#input\_company) | Company name | `string` | n/a | yes |
| <a name="input_vpc_id_list"></a> [vpc\_id\_list](#input\_vpc\_id\_list) | VPCs ID names to enable FLow logs. `e.g. vpc_id_list = ["vpc_id_1", "vpc_id_2", "vpc_id_3"]` | `set(string)` | n/a | yes |

## Outputs

No outputs.
