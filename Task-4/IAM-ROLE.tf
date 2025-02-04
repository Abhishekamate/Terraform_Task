provider "aws" {
  region = "us-east-1"
}
data "aws_iam_role" "iam_role" {
  name = "EC2-read-only-role"
}
output "aws_iam_role" {
    value = data.aws_iam_role.iam_role
}