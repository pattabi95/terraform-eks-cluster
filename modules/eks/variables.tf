variable "cluster_name" {
  type        = string
  description = "EKS cluster name"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID where EKS will be deployed"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "Private subnet IDs for EKS worker nodes or Fargate profiles"
}

variable "public_subnet_ids" {
  type        = list(string)
  description = "Public subnet IDs (for load balancers)"
}

variable "cluster_version" {
  type        = string
  default     = "1.31"
  description = "Kubernetes version for EKS cluster"
}
