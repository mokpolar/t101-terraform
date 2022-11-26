provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_secretsmanager_secret" "main" {
  name = "${var.app_name}"
}

resource "aws_secretsmanager_secret_version" "main" {
  secret_id     = aws_secretsmanager_secret.main.id
  secret_string = jsonencode( {"db_password" = var.db_password} )

  lifecycle {
    ignore_changes = [
      secret_string
    ]
  }
}