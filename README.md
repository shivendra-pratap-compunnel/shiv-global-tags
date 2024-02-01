# Terraform AWS Tagging Module
This Terraform configuration sets up tagging for AWS resources. It utilizes a module named `tagging` located in the `modules/tagging` directory.

## Usage Example
- Create the main.tf file
- Paste the below code snippet in main.tf file, where you are making your terraform configurations

## Put this in main.tf (Required)
```hcl
module "tagging" {
  source = "git::https://github.com/CD-TeraformModules/global-tags.git" #source of the module
}

# your rest of the terraform configuration (resources)
```

## Put this in provider.tf (Required)
```hcl
provider "aws" {
  region = "us-east-1"                 #Change your region
  default_tags {                       #REQUIRED
  tags = module.tagging.global_tags    #REQUIRED
  }                                    #REQUIRED
}
```
### Modules
- **modules/tagging**: Contains the main module configuration for setting up local tags.
