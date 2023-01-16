resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"


  tags = {
    Project     = " VPC_Task "
    Environment = " Test "
    Team        = "DevOps"
    Created_by  = "Dilmurod Ikromov"
  }
}
resource "aws_subnet" "public_subnets1" {

  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Project     = " VPC_Task "
    Environment = " Test "
    Team        = "DevOps"
    Created_by  = "Dilmurod Ikromov"
  }
}
resource "aws_subnet" "public_subnets2" {

  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"


  tags = {
    Project     = " VPC_Task "
    Environment = " Test "
    Team        = "DevOps"
    Created_by  = "Dilmurod Ikromov"
  }
}
resource "aws_subnet" "public_subnets3" {

  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Project     = " VPC_Task "
    Environment = " Test "
    Team        = "DevOps"
    Created_by  = "Dilmurod Ikromov"
  }
}
resource "aws_subnet" "private_subnets1" {

  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Project     = " VPC_Task "
    Environment = " Test "
    Team        = "DevOps"
    Created_by  = "Dilmurod Ikromov"
  }
}

resource "aws_subnet" "private_subnets2" {

  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Project     = " VPC_Task "
    Environment = " Test "
    Team        = "DevOps"
    Created_by  = "Dilmurod Ikromov"
  }
}
resource "aws_subnet" "private_subnets3" {

  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.6.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Project     = " VPC_Task "
    Environment = " Test "
    Team        = "DevOps"
    Created_by  = "Dilmurod Ikromov"
  }
}
