data "terraform_remote_state" "network" {
    backend = "local"

    config = {
        path = "../network/terraform.tfstate.d/${terraform.workspace}/terraform.tfstate"        
    }
}

resource "aws_lb" "front_alb" {
  name               = "front-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.allow_http_from_front_alb.id]
  subnets = data.terraform_remote_state.network.outputs.public_subnets
  enable_deletion_protection = false
}

resource "aws_security_group" "allow_http_from_front_alb" {
  name        = "allow_http_from_front_alb"
  description = "allow_http_from_front_alb"
  vpc_id      = data.terraform_remote_state.network.outputs.vpc_id

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_http_from_front_alb"
  }
}

resource "aws_lb_target_group" "front_tg" {
  name     = "front-lb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = data.terraform_remote_state.network.outputs.vpc_id
}

resource "aws_lb_listener" "front_listener" {
  load_balancer_arn = aws_lb.front_alb.arn
  port              = "80"
  protocol          = "HTTP"
  
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.front_tg.arn
  }
}
