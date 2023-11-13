variable "company" {
  description = "Company name"
  type        = string
}

variable "vpc_id_list" {
  description = "VPCs ID names to enable FLow logs. `e.g. vpc_id_list = [\"vpc_id_1\", \"vpc_id_2\", \"vpc_id_3\"]`"
  type        = set(string)

}

locals {
  bucket_name     = lower("${var.company}-vpc-flow-logs")
}
