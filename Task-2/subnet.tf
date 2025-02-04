provider "aws" {
  region = "us-east-1"
}
data "aws_subnet" "default_subnet" {
    vpc_id = "vpc-0e4f0df24295d657b"
    availability_zone = "us-east-1a"
}
output "subnet_id" {
  value = data.aws_subnet.default_subnet
}