resource "aws_s3_bucket" "raw_layer_bucket" {
  bucket = var.raw_layer_bucket_name
}

resource "aws_s3_bucket_lifecycle_configuration" "raw_layer_lifecycle" {
  bucket = aws_s3_bucket.raw_layer_bucket.id

  rule {
    id     = "raw-layer-lifecycle"
    status = "Enabled"

    expiration {
      days = var.object_expiration_days
    }
  }
}

resource "aws_s3_bucket_versioning" "raw_layer_versioning" {
  bucket = aws_s3_bucket.raw_layer_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_s3_bucket_server_side_encryption_configuration" "raw_layer_encryption" {
  bucket = aws_s3_bucket.raw_layer_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket" "transformation_layer" {
  bucket = var.transformation_layer_bucket_name
}

resource "aws_s3_bucket_lifecycle_configuration" "transformation_layer_lifecycle" {
  bucket = aws_s3_bucket.transformation_layer.id

  rule {
    id     = "transformation-layer-lifecycle"
    status = "Enabled"

    expiration {
      days = var.object_expiration_days
    }
  }
}

resource "aws_s3_bucket_versioning" "transformation_layer_versioning" {
  bucket = aws_s3_bucket.transformation_layer.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "transformation_layer_encryption" {
  bucket = aws_s3_bucket.transformation_layer.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket" "semantic_layer" {
  bucket = var.semantic_layer_bucket_name
}

resource "aws_s3_bucket_lifecycle_configuration" "semantic_layer_lifecycle" {
  bucket = aws_s3_bucket.semantic_layer.id

  rule {
    id     = "semantic-layer-lifecycle"
    status = "Enabled"

    expiration {
      days = var.object_expiration_days
    }
  }
}

resource "aws_s3_bucket_versioning" "semantic_layer_versioning" {
  bucket = aws_s3_bucket.semantic_layer.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "semantic_layer_encryption" {
  bucket = aws_s3_bucket.semantic_layer.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}