terraform {
  backend "s3" {
    bucket = "next-mono-tfstate"
    key    = "terraform.tfstate"
    region = "us-east-1"
    profile = "default"
  }
}

