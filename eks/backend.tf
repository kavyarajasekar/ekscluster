 terraform{
 backend "s3" {
  bucket = "demologseksbucket"
  key    = "ekslogs/terraform.tfstate"
  region = "us-east-1"
  encrypt = true
 }
 } 
