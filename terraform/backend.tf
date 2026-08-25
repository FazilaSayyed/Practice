terraform {
  backend "s3" {
    bucket = "terraformb25"
    region = "eu-north-1"
    key = "tfstate-file"

  }
}