variable "cluster_name" {
  type        = string
  description = "EKS Cluster name"
}

variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnet IDs for EKS"
}

variable "cluster_role_arn" {
  type        = string
  description = "IAM Role ARN for EKS"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to resources"
  default     = {}
}
