module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 4.0"
  
  bucket        = "tbk-example-compliance-bucket-12345"
  acl           = "private"
  
  tags = {
    Environment = "Dev"
    Name        = "MiBucketEjemplo"
  }
}