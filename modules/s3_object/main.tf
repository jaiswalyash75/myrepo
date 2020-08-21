resource "aws_s3_bucket_object" "object" {
  key	 = var.key
  bucket = var.bucket
  source = var.path
}
