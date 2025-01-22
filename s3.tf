module "raw_layer_bucket" {
  source                 = "./modules/s3"
  bucket_name            = "s3-raw-layer-bucket-${var.account_id}"
  object_expiration_days = var.object_expiration_days
}

module "transformation_layer_bucket" {
  source                 = "./modules/s3"
  bucket_name            = "s3-transformation-layer-bucket-${var.account_id}"
  object_expiration_days = var.object_expiration_days
}

module "semantic_layer_bucket" {
  source                 = "./modules/s3"
  bucket_name            = "s3-semantic-layer-bucket-${var.account_id}"
  object_expiration_days = var.object_expiration_days
}