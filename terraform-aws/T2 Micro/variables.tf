variable "aws_region" {
  description = "Región de AWS donde se desplegará la instancia"
  type        = string
  default     = "us-west-1"
}

variable "ami_id" {
  description = "ID de la AMI para la instancia"
  type        = string
  default     = "ami-12345678"  # Reemplaza esto con una AMI válida
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t2.micro"
}
