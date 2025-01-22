output "raw_layer_bucket" {
  value = aws_s3_bucket.raw_layer_bucket.bucket
}

output "transformation_layer_bucket" {
  value = aws_s3_bucket.transformation_layer.bucket
}

output "semantic_layer_bucket" {
  value = aws_s3_bucket.semantic_layer.bucket
}