terraform {
  backend "s3" {
    bucket = "anu-s3-1-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
    encrypt = "true"
  }
}
