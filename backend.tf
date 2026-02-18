terraform {
  backend "s3" {
    bucket         = "khushi-tf-state-2026"
    key            = "automation/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
