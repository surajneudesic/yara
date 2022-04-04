resource "aws_iam_role" "eks-role" {
  name = var.eks-role-name

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

data "aws_iam_policy" "eks-policy" {
  arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

resource "aws_iam_role_policy_attachment" "test-attach" {
  role       = aws_iam_role.eks-role.name
  policy_arn = data.aws_iam_policy.eks-policy.arn
}