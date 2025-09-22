terraform {
  backend "s3" {
    bucket         = "your-tf-state-bucket"
    key            = "environments/dev/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "tf-lock"
  }
}
