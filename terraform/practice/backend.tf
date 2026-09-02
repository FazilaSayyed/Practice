terraform {
  backend "s3" {
    bucket = "terraform-batch25"
    region = "eu-north-1"
    key = "tfstate-file"

  }
}