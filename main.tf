provider "aws" {
  region = "us-west-2"
}

resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "demo" {
  bucket        = "spacelift-demo-greg-${random_id.suffix.hex}"
  force_destroy = true

  tags = {
    Environment = "Demo"
    ManagedBy   = "Spacelift"
  }
}

resource "aws_s3_bucket" "demo_two" {
  bucket        = "spacelift-alt-greg-${random_id.suffix.hex}"
  force_destroy = true

  tags = {
    Environment = "Demo"
    ManagedBy   = "Spacelift"
  }
}
