

/*
data "aws_vpc" "my_demovpc" {
  vpc_id = "vpc-01c5a93af13205718"
}
filter {
  name   = "Name"
  values = "default_vpc"
}




data "aws_subnet" "my_subnet" {
  vpc_id = "vpc-01c5a93af13205718"
  #availability_zone = "us-east-1b"
  filter {
    name   = "Name"
    values = "public_sn"
  }
}


/*
ata "aws_security_groups" "sg" {
 tags = {

    Name = "tcw_security_group"
  }

}
*/

/*
data "aws_vpc" "vpc_available" {
  filter {
    name   = "tag:Name"
    values = ["tcw_vpc"]
  }
}
data "aws_subnet_ids" "available_db_subnet" {
  vpc_id = data.aws_vpc.vpc_available.id
  filter {
    name   = "tag:Name"
    values = ["tcw_database*"]
  }
}

data "aws_security_group" "tcw_sg" {
  filter {
    name   = "tag:Name"
    values = ["tcw_security_group"]
  }
}
*/