module "vpc" {
   source = "git::https://github.com/prashanthbavikadi/terraform-aws-vpc.git"
   project_name = var.project_name
   common_tags = var.common_tags
   public_subnet_cidrs = var.public_subnet_cidrs
   private_subnet_cidrs = var.private_subnet_cidrs
   database_subnet_cidrs = var.database_subnet_cidrs 
}
