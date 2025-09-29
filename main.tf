provider aws {
    region = var.region
}

module "vpc" {
    source = "./modules/vpc"
    vpc_name = var.vpc_name
    vpc_cidr = var.vpc_cidr
    azs = var.azs
    public_subnets = var.public_subnets
    private_subnets = var.private_subnets
}

module "eks" {
    source = "./modules/eks"
    cluster_name = var.cluster_name
    vpc_id = module.vpc.vpc_id
    private_subnet_ids = module.vpc.private_subnet_ids
    public_subnet_ids = module.vpc.public_subnet_ids
}