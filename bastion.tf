resource "aws_security_group" "bastion_sg" {
  name        = "bastion-security-group"
  description = "Security Group for Bastion Host"
  vpc_id      = aws_vpc.a4l_vpc1.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow from anywhere; you might want to limit this.
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_iam_instance_profile" "ec2_instance_profile" {
  name = "ec2-instance-profile"

  #  roles = [aws_iam_role.demo-ssm-Role.name]
}

resource "aws_iam_role" "demo-ssm-role" {
  name = "Demo-SSM-Role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Effect = "Allow",
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_role_policy_attachment" "demo-ssm-policy-attach" {
  role       = aws_iam_role.demo-ssm-role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_instance" "bastion_host" {
  ami           = "ami-0f409bae3775dc8e5"
  instance_type = "t2.micro"  # You can change the instance type
  key_name      = "awsgeneral01"
  
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  
  subnet_id = aws_subnet.sn-web-A.id  # Placing it in sn-web-A subnet as it has public IPs enabled
  
  iam_instance_profile = aws_iam_instance_profile.ec2_instance_profile.name
  
  tags = {
    Name = "Bastion-Host"
  }
}
