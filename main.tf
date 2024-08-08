
data "aws_caller_identity" "current" {}
locals {
  prefix = "halon-entertainment"
}



resource "aws_iam_role" "terraform_role" {
  name = var.terraform_role_name
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          AWS = split(",", var.trusted_entities_arns_list)
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
  description = "Terraform IAM role assumed when selecting workspaces."
  path        = "/"
}

resource "aws_iam_role_policy_attachment" "managed_policies" {
  for_each   = toset(split(",", var.managed_policy_arns_list))
  role       = aws_iam_role.terraform_role.name
  policy_arn = each.value
}
