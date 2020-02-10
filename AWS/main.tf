#--- root/main.tf----
provider "aws" {
  region = var.aws_region
}

# Storage Resources
module "storage" {
  source       = "./storage"
  project_name = "${var.project_name}"
}

# Networking Resources
module "networking"{
  source = "./networking"
  vpc_cidr = "${var.vpc_cidr}"
  public_cidrs = "${var.public_cidrs}"
  accessip = "${var.accessip}"
}



