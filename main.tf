module "eks-role" {
  source        = "./iam-role"
  eks-role-name = var.eks-role-name
}

module "eks-cluster" {
  source = "./eks-cluster"
  depends_on = [
    module.eks-role
  ]
  eks-role-name    = module.eks-role.role-name
  vpc_id           = var.vpc_id
  eks-cluster-name = var.eks-cluster-name
}

module "eks-nodes" {
  source           = "./eks-cluster-nodes"
  vpc_id           = var.vpc_id
  eks_cluster_name = module.eks-cluster.name
  sku              = var.sku
}