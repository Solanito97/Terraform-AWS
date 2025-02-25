variable "aws_region" {
  description = "Región de AWS donde se creará la VPC"
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr_block" {
  description = "Bloque CIDR para la VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Nombre de la VPC"
  type        = string
  default     = "terraform-vpc"
}

variable "public_subnet_cidr_1" {
  description = "Bloque CIDR para la primera subred pública"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_cidr_2" {
  description = "Bloque CIDR para la segunda subred pública"
  type        = string
  default     = "10.0.2.0/24"
}

variable "az1" {
  description = "Zona de disponibilidad para la primera subred pública"
  type        = string
  default     = "us-west-2a"
}

variable "az2" {
  description = "Zona de disponibilidad para la segunda subred pública"
  type        = string
  default     = "us-west-2b"
}