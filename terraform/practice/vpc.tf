resource "aws_vpc" "myvpc" {
  cidr_block = local.vpc_cidr
  tags = {
    Name =  "myvpc"
  }
}

resource "aws_subnet"  "mypvtsub" {
    cidr_block = local.pvt_sub_cidr
    vpc_id = aws_vpc.myvpc.id
    tags = {
        Name = "mypvtsub"
    }
    map_public_ip_on_launch = false
}


resource "aws_subnet"  "mypubsub" {
    cidr_block = local.pub_sub_cidr
    vpc_id = aws_vpc.myvpc.id
    tags = {
        Name = "mypubsub"
    }
    map_public_ip_on_launch = true
}


resource "aws_internet_gateway"  "myigw" {
    vpc_id = aws_vpc.myvpc.id
    tags = {
        Name = "myigw - ${var.project_name}"
    }
}



resource "aws_route_table" "myroute" {
    vpc_id = aws_vpc.myvpc.id
    route {
        cidr_block = local.route
        gateway_id = aws_internet_gateway.myigw.id
    }
}

resource "aws_route_table_association" "sub_associate" {
    subnet_id = aws_subnet.mypubsub.id
    route_table_id = aws_route_table.myroute.id
}

resource "aws_instance" "myinstance" {
  ami = var.myami
  instance_type = var.instance_type
  key_name = var.key_name
  subnet_id = aws_subnet.mypubsub.id

  vpc_security_group_ids = [aws_security_group.mysg.id]
  

   tags = {
    Name = "myinstance"
  }
   
}   




