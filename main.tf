rerce "aws_instance" "my_windows" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  vpc_id        = data.aws_vpc.my_demovpc.id

  subnet_id = data.aws_subnet.my_subnet.id


  key_name = "fordemo.key"


  tags = {
    Name = "My_linux_machine"
    dept = "Cloud"
  }
}

