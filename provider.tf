terraform { 
  required_providers {  #This block ensure which provider plugins to install from where and which version
    aws = {
      source  = "hashicorp/aws"
      version = ">=6.46.0,<7.0.0"  #My code will not break as long as major version is same
    }
  }
}

#Provider Block to Conf the provider conf

provider "aws" {
  region = "us-east-1"
}
