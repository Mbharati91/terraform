variable "aws_region" {
  type        = string
  default     = {
    aws_region = "us-east-1"
  }
} 

variable "vpc_cidr" {
  type = string
  description = "vpc cidr"
}
