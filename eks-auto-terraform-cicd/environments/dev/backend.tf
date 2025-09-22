terraform {
  backend "s3" {
    bucket         = "eks-backends3-bucket-test"
    key            = "environments/dev/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "tf-lock"
  }
}
