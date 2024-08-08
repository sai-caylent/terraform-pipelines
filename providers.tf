provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      Terraform   = "true"
      reposistory = "local"
      customer    = "nep_harlon_entertainment"
      project     = "vdi_solution"

    }
  }
  # assume_role {
  #   role_arn = "arn:aws:iam::${var.account_id}:role/terraform-halon"
  # }
}
