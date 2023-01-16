resource "aws_lb_target_group" "tg" {
  name = "tg"

  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.my_vpc.id

  health_check {
    healthy_threshold   = 2
    interval            = 30
    protocol            = "HTTP"
    unhealthy_threshold = 2
  }
  tags = {
    Project     = "VPC_Task"
    Environment = "Test "
    Team        = "DevOps"
    Created_by  = "Dilmurod Ikromov"
  }
}
