provider "aws" {
  region = var.region
}
##data block for pre-existing vpc
data "aws_vpc" "aws_default_vpc" {
    id = "vpc-0e4f0df24295d657b"
}