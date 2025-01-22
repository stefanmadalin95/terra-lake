
variable "raw_layer_bucket_name" {
  description = "Name of the raw layer S3 bucket"
  type        = string
}

variable "transformation_layer_bucket_name" {
  description = "Name of the transformation layer S3 bucket"
  type        = string
}

variable "semantic_layer_bucket_name" {
  description = "Name of the semantic layer S3 bucket"
  type        = string
}

variable "object_expiration_days" {
  description = "Number of days before objects expire"
  type        = number
}