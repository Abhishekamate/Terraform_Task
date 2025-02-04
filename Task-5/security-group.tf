provider "aws" {
  region = "us-east-1"
}
data "aws_vpc" "default" {
  default = true

}
data "aws_security_group" "default" {
  vpc_id = data.aws_vpc.default.id
  name = "default"

}
output "default_security_group_id" {
  value = data.aws_security_group.default.id
}