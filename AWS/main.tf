#--- root/main.tf----
provider "aws" {
  region = var.aws_region
}

# Storage Resources
module "storage" {
  source       = "./terraform-aws-storage"
  project_name = "${var.project_name}"
}

# Networking Resources
module "networking"{
  source = "./terraform-aws-networking"
  vpc_cidr = "${var.vpc_cidr}"
  public_cidrs = "${var.public_cidrs}"
  accessip = "${var.accessip}"
}



