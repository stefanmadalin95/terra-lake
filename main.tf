module "s3_buckets" {
  source                           = "./modules/s3"
  raw_layer_bucket_name            = "s3-raw-layer-bucket-${var.account_id}"
  transformation_layer_bucket_name = "s3-transformation-layer-bucket-${var.account_id}"
  semantic_layer_bucket_name       = "s3-semantic-layer-bucket-${var.account_id}"
  object_expiration_days           = var.object_expiration_days
}
