resource "aws_instance" "TesterInstance" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo ${aws_instance.TesterInstance.private_ip} >> private_ips.txt"
  }
}

output "ip" {
  value = aws_instance.TesterInstance.public_ip
}

