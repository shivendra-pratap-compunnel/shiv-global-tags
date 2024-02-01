provider "aws" {
  region = "us-east-1"                 #Change your region
  default_tags {                       #REQUIRED
  tags = module.tagging.global_tags    #REQUIRED
  }                                    #REQUIRED
}
