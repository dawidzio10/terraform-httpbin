resource "aws_lb_target_group" "web-tg" {
  name        = "web-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = "${aws_lb.web-lb.vpc_id}"
  target_type = "instance"

  stickiness {
    enabled = true
    type    = "lb_cookie"
  }

  health_check {
    enabled = true
    path    = "/"
    matcher = "200"
  }
}

resource "aws_lb_target_group_attachment" "web01-tg" {
  target_group_arn = "${aws_lb_target_group.web-tg.arn}"
  target_id        = "${aws_instance.web01.id}"
  port             = 8080
}

resource "aws_lb_target_group_attachment" "web02-tg" {
  target_group_arn = "${aws_lb_target_group.web-tg.arn}"
  target_id        = "${aws_instance.web02.id}"
  port             = 8080
}

resource "aws_lb" "web-lb" {
  name               = "web-lb"
  load_balancer_type = "application"
  subnets            = ["${aws_instance.web01.subnet_id}", "${aws_instance.web02.subnet_id}"]
  security_groups    = ["${aws_security_group.lb-sg.id}"]
  idle_timeout       = 400
}

resource "aws_lb_listener" "web-lb-listener" {
  load_balancer_arn = "${aws_lb.web-lb.arn}"
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = "${aws_lb_target_group.web-tg.arn}"
  }
}
