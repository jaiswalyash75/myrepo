resource "aws_instance" "yash_jaiswal" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = var.tag_id
}

