provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "ExampleS3Bucket"
    Environment = "Dev"
  }
}

# Recurso específico para manejar ACL
resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.example_bucket.id
  acl    = var.acl
}

variable "aws_region" {
  description = "Región de AWS donde se desplegará el bucket S3"
  type        = string
  default     = "us-west-1"
}

variable "bucket_name" {
  description = "Nombre único para el bucket S3"
  type        = string
  default     = "mi-bucket-terraform-demo-unique"
}

variable "acl" {
  description = "Control de acceso al bucket S3"
  type        = string
  default     = "private"
}