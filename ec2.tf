resource "aws_instance" "linux" {
  ami           = "ami-091138d0f0d41ff90"
  instance_type = "t3.micro"
  count = 2
  tags = {
    Name = "Linux-web${count.index}"
  }
}

output "ips" {
  value = aws_instance.linux[*].public_ip  #Splat Expression 
}
