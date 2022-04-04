variable "eks_cluster_name" {
  description = "EKS cluster name"
}

variable "vpc_id" {
  description = "vpc id"
}

variable "sku" {
  type = list(string)
}