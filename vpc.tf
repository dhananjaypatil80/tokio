













































/*

resource "aws_vpc" "myVpc" {
  cidr_block = "10.0.0.0/16"

}

##########  Internet Gateway ############
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.myVpc.id

  tags = {
    Name = "igw"
  }
}

######### Subnet #################

resource "aws_subnet" "mySubnet" {
  vpc_id     = aws_vpc.myVpc.id # Argument
  cidr_block = "10.0.1.0/24"
  #map_public_ip_on_launch         = false
  map_public_ip_on_launch = true


  tags = {
    Name = "public subnet"
  }
}



resource "aws_subnet" "mySubnetpvt" {
  vpc_id     = aws_vpc.myVpc.id # Argument
  cidr_block = "10.0.2.0/24"
  #map_public_ip_on_launch         = false
  map_public_ip_on_launch = false


  tags = {
    Name = "private subnet"
  }
}
############ Route Table ###################

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.myVpc.id
  #map_public_ip_on_launch = true
  route = []
  tags = {
    Name = "publicSNroute"
  }
}

resource "aws_route_table" "rtprivatesn" {
  vpc_id = aws_vpc.myVpc.id
  #map_public_ip_on_launch = true
  route = []
  tags = {
    Name = "privateSNroute"
  }
}

########### Route #####################

resource "aws_route" "route" {
  route_table_id         = aws_route_table.rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
  depends_on             = [aws_route_table.rt]
}
*/