output "public_ip" {
  value = aws_instance.myec2.public_ip
}


output "instance_arn" {
  value = aws_instance.myec2.arn
}


output "vpc_id" {
  value = aws_vpc.myvpc.id
}

output "gateway_id" {
  value = aws_internet_gateway.igw.id
}


output "subnet_id" {
  value = aws_subnet.mypubsub.id
}

output "route_table_id" {
  value = aws_route_table_id.myroute.id
}