variable "region" {
  description = "Cluster region"
  default = "ap-south-1"
}

variable "account_id" {}
variable "cluster_name" {
  description = "Name of the EKS cluster"
  default     = "eks"
}

variable "name_prefix" {
  type = string
  default = "paravx1"
}

variable "kubernetes_version" {
  description = "Cluster Kubernetes version"
  default     = "1.29"
}

# Being in this list is required to see Kubernetes resources in AWS console
variable "aws_auth_users" {
  description = "Developers with access to the dev K8S cluster and the container registries"
  default = [
    {
      userarn  = "arn:aws:iam::xxx:user/user.name1"
      username = "user.name1"
      groups   = ["system:masters"]
    },
    {
      userarn  = "arn:aws:iam::xxx:user/user.name2"
      username = "user.name2"
      groups   = ["system:masters"]
    }
  ]
}