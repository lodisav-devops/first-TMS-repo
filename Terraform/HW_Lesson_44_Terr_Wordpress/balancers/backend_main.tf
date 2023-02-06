resource "aws_lb" "back_alb" {
  name               = "back-lb"
  internal           = true
  load_balancer_type = "application"
  security_groups    = [ aws_security_group.allow_http_from_back_alb.id ]
  subnets = data.terraform_remote_state.network.outputs.private_subnets
  enable_deletion_protection = false
}

resource "aws_security_group" "allow_http_from_back_alb" {
  name        = "allow_http_from_back_alb"
  description = "allow_http_from_back_alb"
  vpc_id      = data.terraform_remote_state.network.outputs.vpc_id

  
  dynamic "ingress" {
    for_each = "${var.allow_ports}"
    content {
      description      = "Ports from Internet"
      from_port        = ingress.value
      to_port          = ingress.value
      protocol         = "tcp"
      security_groups = [ aws_security_group.allow_http_from_front_alb.id ]      
    }
  }
  
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_http_from_back_alb"
  }
}

resource "aws_lb_target_group" "back_tg" {
  name     = "back-lb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = data.terraform_remote_state.network.outputs.vpc_id
  health_check {    
    path = "/var/www/html"
    matcher = "200-499"
    port = "8080"
  }
}

resource "aws_lb_listener" "back_listener" {
  load_balancer_arn = aws_lb.back_alb.arn
  port              = "80"
  protocol          = "HTTP"
  
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.back_tg.arn
  }
}
