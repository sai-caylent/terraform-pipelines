
variable "aws_region" {
  type    = string
  default = "us-west-2"
}

variable "terraform_role_name" {
  description = "The name of the role to be created."
  type        = string
  default     = "terraform"
}

variable "trusted_entities_arns_list" {
  description = "A comma-separated list of AWS managed policy ARNs (e.g arn:aws:iam::ACCOUNT_ID:root) that will be assigned to this role."
  type        = string
  default     = "arn:aws:iam::931366402038:root"
}

variable "managed_policy_arns_list" {
  description = "A comma-separated list of AWS managed policy ARNs (e.g arn:aws:iam::aws:policy/AdministratorAccess) that will be assigned to this role."
  type        = string
  default     = "arn:aws:iam::aws:policy/AdministratorAccess"
}
