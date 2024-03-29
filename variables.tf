############################# main : var #######################################
variable "env" { type = string }
# variable "aws_profile" { type = string }
variable "aws_region" { type = string }
variable "project" { type = string }
variable "default_tags" { type = map(string) }

# variable "suffixnum" { type = number }

############################# vpc-igw : var #######################################
variable "enable_dns_hostnames" { type = bool }
variable "enable_dns_support" { type = bool }

variable "vpc_id" { type = string }
variable "vpc_cidr" { type = string }
variable "instance_tenancy" { type = string }
# variable "availability_zones" { type = list(any) }