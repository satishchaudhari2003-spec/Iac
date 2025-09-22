module "eks_auto" {
  source             = "../../modules/eks-auto"
  cluster_name       = var.cluster_name
  kubernetes_version = var.kubernetes_version
  subnet_ids         = module.vpc.private_subnet_ids
  cluster_role_arn   = aws_iam_role.eks_cluster.arn
  tags               = var.tags
}

# Example: VPC, IAM, and other resources would be referenced here or in their own modules.
