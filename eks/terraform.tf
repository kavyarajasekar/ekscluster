terraform {
required_providers {
   aws = {
    source  = "hashicorp/aws"
    version = ">=6.9.0"
   }
 
  random = {
    source  = "hashicorp/random"
    version = "~> 3.5.1"
   }
 
   tls = {
    source  = "hashicorp/tls"
    version = ">= 4.0.0"
   }
 
  kubernetes = {
    source  = "hashicorp/kubernetes"
    version = "~> 2.23.0"
   }
  
  helm = {
      source  = "hashicorp/helm"
      version = ">= 2.6.0"
    }
  }
 
 

required_version = "~> 1.0"

}
