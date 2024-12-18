
resource "aws_instance" "app" {
  ami             = "ami-05d38da78ce859165" # Use an appropriate Ubuntu AMI
  instance_type   = var.instance_type
  subnet_id       = "subnet-0f30c30418def6379"
  security_groups = ["sg-0cebefda3f0f9d62f"]
  key_name        = "MandarDevOps"

  tags = {
    Name = "Mandar-mern-app"
  }
}

output "app_instance_public_ip" {
  value = aws_instance.app.public_ip
}
