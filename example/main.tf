module "tagging" {
  source = "git::https://github.com/shivendra-pratap-compunnel/global-tags.git" #source of the module
}

# your rest of the terraform configuration (resources)
resource "aws_instance" "example" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
}
