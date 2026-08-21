output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = [
    aws_subnet.public_a.id,
    aws_subnet.public_b.id
  ]
}

output "private_subnet_ids" {
  value = [
    aws_subnet.private_a.id,
    aws_subnet.private_b.id
  ]
}

output "alb_dns_name" {
  value = aws_lb.main.dns_name
}

output "autoscaling_group_name" {
  value = aws_autoscaling_group.web.name
}

output "target_group_arn" {
  value = aws_lb_target_group.web.arn
}
