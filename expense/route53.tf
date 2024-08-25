resource "aws_route53_record" "expense" {
  count= length(var.instance_name)
  zone_id = var.zone_id
  name    = var.instance_name[count.index] == "frontend" ? var.domain_name : "${var.instance_name[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 300
  records = [aws_eip.lb.public_ip]
}