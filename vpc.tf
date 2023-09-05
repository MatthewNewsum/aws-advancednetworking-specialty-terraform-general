resource "aws_vpc" "a4l_vpc1" {
  cidr_block                       = "10.16.0.0/16"
  enable_dns_support               = true
  enable_dns_hostnames             = true
  assign_generated_ipv6_cidr_block = true

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
  #  ipv6_cidr_block                 = "2600:1f18:1b5b:db00::/64"
  ipv6_cidr_block = cidrsubnet(aws_vpc.a4l_vpc1.ipv6_cidr_block, 8, 0)

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
  #  ipv6_cidr_block                 = "2600:1f18:1b5b:db01::/64"
  ipv6_cidr_block = cidrsubnet(aws_vpc.a4l_vpc1.ipv6_cidr_block, 8, 1)
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
  #  ipv6_cidr_block                 = "2600:1f18:1b5b:db02::/64"
  ipv6_cidr_block = cidrsubnet(aws_vpc.a4l_vpc1.ipv6_cidr_block, 8, 2)
  tags = {
    Name = "sn-app-A"
  }
}

resource "aws_subnet" "sn-web-A" {
  vpc_id                          = aws_vpc.a4l_vpc1.id
  cidr_block                      = "10.16.48.0/20"
  availability_zone               = "us-east-1a"
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = true
  #  ipv6_cidr_block                 = "2600:1f18:1b5b:db03::/64"
  ipv6_cidr_block = cidrsubnet(aws_vpc.a4l_vpc1.ipv6_cidr_block, 8, 3)
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
  #  ipv6_cidr_block                 = "2600:1f18:1b5b:db04::/64"
  ipv6_cidr_block = cidrsubnet(aws_vpc.a4l_vpc1.ipv6_cidr_block, 8, 4)
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
  #  ipv6_cidr_block                 = "2600:1f18:1b5b:db05::/64"
  ipv6_cidr_block = cidrsubnet(aws_vpc.a4l_vpc1.ipv6_cidr_block, 8, 5)

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
  #  ipv6_cidr_block                 = "2600:1f18:1b5b:db06::/64"
  ipv6_cidr_block = cidrsubnet(aws_vpc.a4l_vpc1.ipv6_cidr_block, 8, 6)
  tags = {
    Name = "sn-app-B"
  }
}

resource "aws_subnet" "sn-web-B" {
  vpc_id                          = aws_vpc.a4l_vpc1.id
  cidr_block                      = "10.16.112.0/20"
  availability_zone               = "us-east-1b"
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = true
  #  ipv6_cidr_block                 = "2600:1f18:1b5b:db07::/64"
  ipv6_cidr_block = cidrsubnet(aws_vpc.a4l_vpc1.ipv6_cidr_block, 8, 7)

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
  #  ipv6_cidr_block                 = "2600:1f18:1b5b:db08::/64"
  ipv6_cidr_block = cidrsubnet(aws_vpc.a4l_vpc1.ipv6_cidr_block, 8, 8)

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
  #  ipv6_cidr_block                 = "2600:1f18:1b5b:db09::/64"
  ipv6_cidr_block = cidrsubnet(aws_vpc.a4l_vpc1.ipv6_cidr_block, 8, 9)

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
  #  ipv6_cidr_block                 = "2600:1f18:1b5b:db0a::/64"
  ipv6_cidr_block = cidrsubnet(aws_vpc.a4l_vpc1.ipv6_cidr_block, 8, 10)

  tags = {
    Name = "sn-app-C"
  }
}

resource "aws_subnet" "sn-web-C" {
  vpc_id                          = aws_vpc.a4l_vpc1.id
  cidr_block                      = "10.16.176.0/20"
  availability_zone               = "us-east-1c"
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = true
  #  ipv6_cidr_block                 = "2600:1f18:1b5b:db0b::/64"
  ipv6_cidr_block = cidrsubnet(aws_vpc.a4l_vpc1.ipv6_cidr_block, 8, 11)

  tags = {
    Name = "sn-web-C"
  }
}

# Create an Internet Gateway
resource "aws_internet_gateway" "a4l_igw" {
  vpc_id = aws_vpc.a4l_vpc1.id

  tags = {
    Name = "a4l-vpc1-igw"
  }
}

# Create a new public route table
resource "aws_route_table" "a4l_rt_web" {
  vpc_id = aws_vpc.a4l_vpc1.id

  tags = {
    Name = "a4l-vpc1-rt-web"
  }
}

# Associate the new route table with sn-web-A
resource "aws_route_table_association" "a4l_rt_web_assoc_A" {
  subnet_id      = aws_subnet.sn-web-A.id
  route_table_id = aws_route_table.a4l_rt_web.id
}

# Associate the new route table with sn-web-B
resource "aws_route_table_association" "a4l_rt_web_assoc_B" {
  subnet_id      = aws_subnet.sn-web-B.id
  route_table_id = aws_route_table.a4l_rt_web.id
}

# Associate the new route table with sn-web-C
resource "aws_route_table_association" "a4l_rt_web_assoc_C" {
  subnet_id      = aws_subnet.sn-web-C.id
  route_table_id = aws_route_table.a4l_rt_web.id
}

# Add default IPv4 and IPv6 routes to the internet gateway
resource "aws_route" "a4l_rt_web_default_ipv4" {
  route_table_id         = aws_route_table.a4l_rt_web.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.a4l_igw.id
}

resource "aws_route" "a4l_rt_web_default_ipv6" {
  route_table_id              = aws_route_table.a4l_rt_web.id
  destination_ipv6_cidr_block = "::/0"
  gateway_id                  = aws_internet_gateway.a4l_igw.id
}


# # Create a CloudWatch log group named "vpc-flow-logs-demo"
# resource "aws_cloudwatch_log_group" "vpc_flow_logs_demo" {
#   name = "vpc-flow-logs-demo"
# }

# # Create an IAM role for VPC Flow Logs
# resource "aws_iam_role" "Demo-VPC-Flow-Logs" {
#   name = "Demo-VPC-Flow-Logs"

#   assume_role_policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Action = "sts:AssumeRole",
#         Effect = "Allow",
#         Principal = {
#           Service = "vpc-flow-logs.amazonaws.com"
#         }
#       }
#     ]
#   })
# }

# # Attach the CloudWatchLogsFullAccess policy to the role
# resource "aws_iam_role_policy_attachment" "flow_log_role_cloudwatch_full_access" {
#   role       = aws_iam_role.Demo-VPC-Flow-Logs.name
#   policy_arn = "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"
# }

# # Create VPC Flow Logs that publish to the CloudWatch log group
# resource "aws_flow_log" "cloudwatch_flow_log" {
#   log_destination      = aws_cloudwatch_log_group.vpc_flow_logs_demo.arn
#   log_destination_type = "cloud-watch-logs"
#   traffic_type         = "ALL"
#   vpc_id               = aws_vpc.a4l_vpc1.id
#   iam_role_arn         = aws_iam_role.Demo-VPC-Flow-Logs.arn
# }