resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name        = "VPC IG"
    Project     = "VPC_Task"
    Environment = "Test "
    Team        = "DevOps"
    Created_by  = "Dilmurod Ikromov"



  }
}
resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Project     = "VPC_Task"
    Environment = "Test "
    Team        = "DevOps"
    Created_by  = "Viktoryia Kochkina"
  }
}
resource "aws_route_table_association" "public_subnet_asso1" {

  subnet_id      = aws_subnet.public_subnets1.id
  route_table_id = aws_route_table.rt.id

}

resource "aws_route_table_association" "public_subnet_asso2" {

  subnet_id      = aws_subnet.public_subnets2.id
  route_table_id = aws_route_table.rt.id


}
resource "aws_route_table_association" "public_subnet_asso3" {

  subnet_id      = aws_subnet.public_subnets3.id
  route_table_id = aws_route_table.rt.id

}
