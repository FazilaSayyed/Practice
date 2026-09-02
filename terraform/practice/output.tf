output "public_ip" {
  value = aws_instance.myec2.public_ip
}


output "instance_arn" {
  value = aws_instance.myec2.arn
}


output "gateway_id" {
  value = aws_internet_gateway.myigw.id
}

output "route_table_id" {
  value = aws_route_table.myroute.id
}