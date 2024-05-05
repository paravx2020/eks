resource "aws_ecr_repository" "module-a" {
  name = "my-app/module-a"
}

resource "aws_ecr_repository" "module-b" {
  name = "my-app/module-b"
}

resource "aws_ecr_repository" "module-c" {
  name = "my-app/module-c"
}