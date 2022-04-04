output "endpoint" {
  value = aws_eks_cluster.test-cluster.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.test-cluster.certificate_authority[0].data
}
output "name" {
  value = aws_eks_cluster.test-cluster.name
}