locals {
  tags = {
      Creator          = "Compunnel Inc."
      TechOwner        = "DevOps Team"
      TechOwnerEmail   = "cloudsupport@compunnel.in"
      Platform	       = "Terraform"
  }
}

output "global_tags" {
  value = local.tags
}






