resource "aws_ecr_repository" "user" {
  name  = "user-service"
}

resource "aws_ecr_repository" "order" {
  name  = "order-service"
