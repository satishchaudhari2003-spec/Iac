module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "21.1.0"

  cluster_name       = var.cluster_name
  cluster_version    = var.kubernetes_version
  subnet_ids         = var.subnet_ids
  cluster_role_arn   = var.cluster_role_arn
  vpc_id             = var.vpc_id
  
  cluster_compute_config = {
    enabled = true   # Enable EKS Auto Mode here
  }

  tags = var.tags
}

