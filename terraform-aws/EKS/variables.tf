variable "aws_region" {
  description = "Región de AWS donde se creará el clúster EKS"
  type        = string
  default     = "us-west-2"
}

variable "cluster_name" {
  description = "Nombre del clúster EKS"
  type        = string
  default     = "my-eks-cluster"
}

variable "cluster_version" {
  description = "Versión de Kubernetes para el clúster EKS"
  type        = string
  default     = "1.24"
}

variable "subnet_ids" {
  description = "Lista de subnets donde se desplegará el clúster EKS"
  type        = list(string)
  default     = [
    "subnet-XXXXXXXX", 
    "subnet-YYYYYYYY"
  ]
}
