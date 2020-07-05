

region = "ap-northeast-2"
name   = "jj-demo"

# vpc_id   = ""
vpc_cidr = "10.20.0.0/16"

public_subnets = [
    {
      name = "public-a"
      zone = "ap-northeast-2a"
      cidr = "10.20.1.0/24"
      tags = {}
    },
    {
      name = "public-b"
      zone = "ap-northeast-2b"
      cidr = "10.20.2.0/24"
      tags = {}
    },
    {
      name = "public-c"
      zone = "ap-northeast-2c"
      cidr = "10.20.3.0/24"
      tags = {}
    },
  ]

private_subnets = [
    {
      name = "public-a"
      zone = "ap-northeast-2a"
      cidr = "10.20.4.0/24"
      tags = {}
    },
    {
      name = "public-b"
      zone = "ap-northeast-2b"
      cidr = "10.20.5.0/24"
      tags = {}
    },
    {
      name = "public-c"
      zone = "ap-northeast-2c"
      cidr = "10.20.6.0/24"
      tags = {}
    },
  ]

single_route_table = false
enable_nat_gateway = true
single_nat_gateway = true

tags = {
  "kubernetes.io/cluster/seoul-dev-demo-eks" = "shared"
  "kubernetes.io/cluster/seoul-dev-spot-eks" = "shared"
}