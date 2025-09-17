resource "aws_ecrpublic_repository" "user" {
  repository_name  = "user-service"
}

resource "aws_ecrpublic_repository" "order" {
  repository_name  = "order-service"
  
}
