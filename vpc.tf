resource "aws_vpc" "a4l_vpc1" {
  cidr_block                       = "10.16.0.0/16"
  enable_dns_support               = true
  enable_dns_hostnames             = true
  assign_generated_ipv6_cidr_block = true
  #   enable_ipv6_support  = true

  tags = {
    Name = "a4l-vpc1"
  }

}

# Subnets in us-east-1a
resource "aws_subnet" "sn-reserved-A" {
  vpc_id                          = aws_vpc.a4l_vpc1.id
  cidr_block                      = "10.16.0.0/20"
  availability_zone               = "us-east-1a"
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = true
  ipv6_cidr_block                 = "2600:1f18:236d:5c00::/64"

  tags = {
    Name = "sn-reserved-A"
  }
}

resource "aws_subnet" "sn-db-A" {
  vpc_id                          = aws_vpc.a4l_vpc1.id
  cidr_block                      = "10.16.16.0/20"
  availability_zone               = "us-east-1a"
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = true
  ipv6_cidr_block                 = "2600:1f18:236d:5c01::/64"

  tags = {
    Name = "sn-db-A"
  }
}

resource "aws_subnet" "sn-app-A" {
  vpc_id                          = aws_vpc.a4l_vpc1.id
  cidr_block                      = "10.16.32.0/20"
  availability_zone               = "us-east-1a"
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = true
  ipv6_cidr_block                 = "2600:1f18:236d:5c02::/64"

  tags = {
    Name = "sn-app-A"
  }
}

resource "aws_subnet" "sn-web-A" {
  vpc_id                          = aws_vpc.a4l_vpc1.id
  cidr_block                      = "10.16.48.0/20"
  availability_zone               = "us-east-1a"
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = true
  ipv6_cidr_block                 = "2600:1f18:236d:5c03::/64"

  tags = {
    Name = "sn-web-A"
  }
}

# Subnets in us-east-1b
resource "aws_subnet" "sn-reserved-B" {
  vpc_id                          = aws_vpc.a4l_vpc1.id
  cidr_block                      = "10.16.64.0/20"
  availability_zone               = "us-east-1b"
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = true
  ipv6_cidr_block                 = "2600:1f18:236d:5c04::/64"

  tags = {
    Name = "sn-reserved-B"
  }
}

resource "aws_subnet" "sn-db-B" {
  vpc_id                          = aws_vpc.a4l_vpc1.id
  cidr_block                      = "10.16.80.0/20"
  availability_zone               = "us-east-1b"
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = true
  ipv6_cidr_block                 = "2600:1f18:236d:5c05::/64"

  tags = {
    Name = "sn-db-B"
  }
}

resource "aws_subnet" "sn-app-B" {
  vpc_id                          = aws_vpc.a4l_vpc1.id
  cidr_block                      = "10.16.96.0/20"
  availability_zone               = "us-east-1b"
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = true
  ipv6_cidr_block                 = "2600:1f18:236d:5c06::/64"

  tags = {
    Name = "sn-app-B"
  }
}

resource "aws_subnet" "sn-web-B" {
  vpc_id                          = aws_vpc.a4l_vpc1.id
  cidr_block                      = "10.16.112.0/20"
  availability_zone               = "us-east-1b"
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = true
  ipv6_cidr_block                 = "2600:1f18:236d:5c07::/64"

  tags = {
    Name = "sn-web-B"
  }
}

# Subnets in us-east-1c
resource "aws_subnet" "sn-reserved-C" {
  vpc_id                          = aws_vpc.a4l_vpc1.id
  cidr_block                      = "10.16.128.0/20"
  availability_zone               = "us-east-1c"
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = true
  ipv6_cidr_block                 = "2600:1f18:236d:5c08::/64"

  tags = {
    Name = "sn-reserved-C"
  }
}

resource "aws_subnet" "sn-db-C" {
  vpc_id                          = aws_vpc.a4l_vpc1.id
  cidr_block                      = "10.16.144.0/20"
  availability_zone               = "us-east-1c"
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = true
  ipv6_cidr_block                 = "2600:1f18:236d:5c09::/64"

  tags = {
    Name = "sn-db-C"
  }
}

resource "aws_subnet" "sn-app-C" {
  vpc_id                          = aws_vpc.a4l_vpc1.id
  cidr_block                      = "10.16.160.0/20"
  availability_zone               = "us-east-1c"
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = true
  ipv6_cidr_block                 = "2600:1f18:236d:5c0a::/64"

  tags = {
    Name = "sn-app-C"
  }
}

resource "aws_subnet" "sn-web-C" {
  vpc_id                          = aws_vpc.a4l_vpc1.id
  cidr_block                      = "10.16.176.0/20"
  availability_zone               = "us-east-1c"
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = true
  ipv6_cidr_block                 = "2600:1f18:236d:5c0b::/64"

  tags = {
    Name = "sn-web-C"
  }
}