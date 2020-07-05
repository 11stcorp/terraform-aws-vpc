# locals

locals {
  # name = "${var.name}"

  # upper_name = upper(local.name)

  # lower_name = lower(local.name)

  vpc_id = var.create_vpc ? element(concat(aws_vpc.this.*.id, [""]), 0) : var.vpc_id

  # az_names = data.aws_availability_zones.azs.names

  # az_length = length(local.az_names[0])

  # public_count = var.public_subnet_enable ? var.public_subnet_count > 0 ? var.public_subnet_count : length(local.az_names) > 3 ? 3 : length(local.az_names) : 0

  # public_names = length(var.public_subnet_zones) > 0 ? var.public_subnet_zones : data.aws_availability_zones.azs.names

  # public_length = length(var.public_subnet_zones) > 0 ? length(var.public_subnet_zones[0]) : length(data.aws_availability_zones.azs.names[0])

  # private_count = var.private_subnet_enable ? var.private_subnet_count > 0 ? var.private_subnet_count : length(local.az_names) > 3 ? 3 : length(local.az_names) : 0

  # private_names = length(var.private_subnet_zones) > 0 ? var.private_subnet_zones : data.aws_availability_zones.azs.names

  # private_length = length(var.private_subnet_zones) > 0 ? length(var.private_subnet_zones[0]) : length(data.aws_availability_zones.azs.names[0])


  gateway_id = var.create_vpc ? element(concat(aws_internet_gateway.this.*.id, [""]), 0) : element(concat(data.aws_internet_gateway.this.*.id, [""]), 0)

  max_subnet_count = max(
    length(var.public_subnets),
    length(var.private_subnets),
  )

  min_azs_count = min(
    length(data.aws_availability_zones.azs.names),
    3,
  )

  zone_count = local.max_subnet_count < 1 ? 0 : var.single_route_table ? 1 : local.min_azs_count
  zone_index = {
    "a" = 0,
    "b" = 1,
    "c" = 2,
  }

  nat_gateway_count = var.enable_nat_gateway ? var.single_nat_gateway ? 1 : length(var.public_subnets) : 0
}
