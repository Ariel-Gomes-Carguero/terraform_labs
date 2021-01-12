resource "aws_security_group" "busybox" {
  name        = var.security
  description = "Regras para liberar portas"

ingress {
    description = "Endereco para liberar"
    from_port   = 1337
    to_port     = 1337
    protocol    = "tcp"
    cidr_blocks = [var.cidr]
  }

egress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

egress {
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }


  tags = {
    "Name" = "sg_develop"
    "Provider" = "terraform"
  }
  
}