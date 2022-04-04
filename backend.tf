terraform {
  backend "s3" {
    bucket = "mybucket-suraj"
    key    = "terraform"
    region = "ap-south-1"
  }
}