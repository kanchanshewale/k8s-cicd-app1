variable "aws_region" {
  description = "AWS region to deploy EKS"
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS CLI profile name (leave default if using default)"
  type        = string
  default     = "default"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "eks-devops-cluster"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "List of public subnet CIDRs (one per AZ)"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "instance_type" {
  description = "EC2 instance type for worker nodes"
  type        = string
  default     = "t3.medium"
}

variable "desired_capacity" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "min_size" {
  description = "Minimum worker nodes"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum worker nodes"
  type        = number
  default     = 3
}

variable "key_name" {
  description = "Optional EC2 key pair name for node SSH (leave blank to disable remote_access)"
  type        = string
  default     = ""
}

