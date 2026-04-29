variable "project_id" {
  type = string
}

variable "network_id" {
  type        = string
  description = "The VPC network ID to connect the instance to"
}

variable "kms_key_name" {
  type        = string
  description = "The KMS key name for CMEK"
}
