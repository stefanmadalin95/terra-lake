variable "cloud_region" {
  type        = string
  description = "Define the cloud region which tf should use."
}

variable "account_id" {
  type        = string
  description = "Unique identifier used for S3 Buckets"
}

variable "object_expiration_days" {
  description = "Number of days before objects expire"
  type        = number
}