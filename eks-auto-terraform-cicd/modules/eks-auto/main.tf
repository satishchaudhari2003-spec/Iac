module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "21.1.0"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  subnet_ids      = var.subnet_ids
  vpc_id          = var.vpc_id

  enable_cluster_creator_admin_permissions = true

  eks_managed_node_groups = {}
  eks_auto_scaling_groups = {}
  eks_auto_mode           = true

  tags = var.tags
}
