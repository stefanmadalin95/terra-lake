variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "object_expiration_days" {
  description = "Number of days before objects expire"
  type        = number
}