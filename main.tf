provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "demo" {
  bucket        = "spacelift-demo-greg2"
  force_destroy = true

  tags = {
    Environment = "Demo"
    ManagedBy   = "Spacelift"
  }
}


