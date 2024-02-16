terraform {
  required_providers {
    random = {
        source = "hashi/random"
        version = "3.6.0"
    }
    aws = {
        source = "hashi/aws"
        version = "5.37.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}