variable "eks-role-name" {
  description = "variable name"
}

variable "vpc_id" {
  description = "vpc id"
}

variable "eks-cluster-name" {
  description = "cluster name"
}

variable "sku" {
  type = list(string)
}