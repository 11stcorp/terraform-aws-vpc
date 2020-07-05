# variable

variable "region" {
  description = "The region to deploy the cluster in, e.g: us-east-1"
}

variable "name" {
  description = "Name of the cluster, e.g: DEMO"
}

variable "create_vpc" {
  description = "New VPC will be created"
  type        = bool
  default     = true
}

variable "vpc_id" {
  description = "The VPC ID."
  default     = ""
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC, e.g: 10.0.0.0/16"
  default     = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  type        = bool
  default     = true
}


### subnets
variable "single_route_table" {
  description = "Should be true if you want to provision a single shared Route Table across all of your public networks"
  type        = bool
  default     = false
}

variable "enable_nat_gateway" {
  description = "Should be true if you want to provision NAT Gateways for each of your private networks"
  type        = bool
  default     = false
}

variable "single_nat_gateway" {
  description = "Should be true if you want to provision a single shared NAT Gateway across all of your private networks"
  type        = bool
  default     = false
}


variable "public_subnets" {
  # type = list(object({
  #   zone = string
  #   cidr = string
  #   tags = map
  # }))
  default = []
}

variable "private_subnets" {
  # type = list(object({
  #   zone = string
  #   cidr = string
  #   tags = map
  # }))
  default = []
}


variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}
