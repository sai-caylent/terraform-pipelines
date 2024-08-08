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
}
