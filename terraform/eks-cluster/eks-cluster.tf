data "aws_iam_role" "eks-role" {
  name = var.eks-role-name
}

data "aws_subnet_ids" "subnet-id" {
  vpc_id = var.vpc_id
}

resource "aws_eks_cluster" "test-cluster" {
  name     = var.eks-cluster-name
  role_arn = data.aws_iam_role.eks-role.arn
  vpc_config {
    subnet_ids              = data.aws_subnet_ids.subnet-id.ids
    endpoint_private_access = true
  }

}