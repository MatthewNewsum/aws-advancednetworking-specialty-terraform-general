resource "aws_vpc" "a4l_vpc1" {
  cidr_block           = "10.16.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  assign_generated_ipv6_cidr_block = true
#   enable_ipv6_support  = true

  tags = {
    Name = "a4l-vpc1"
  }

}
