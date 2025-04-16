resource "aws_flow_log" "default" {
  for_each = var.vpc_id_list

  log_destination      = aws_s3_bucket.flow_logs.arn
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = each.value
}

resource "aws_s3_bucket" "flow_logs" {
  bucket = "${local.bucket_name}-${data.aws_region.current.name}"
  region = data.aws_region.current.name
}

data "aws_region" "current" {}
