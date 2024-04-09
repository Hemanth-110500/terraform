provider "aws" {
  shared_config_files      = ["$HOME/.aws/config"]
  shared_credentials_files = ["$HOME/.aws/credentials"]
}

resource "aws_vpc" "aws-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "aws-vpc"
  }
}

resource "aws_ecs_cluster" "aws-ecs-cluster" {
  name = "aws-ecs-cluster"
}