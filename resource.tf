provider "aws" {
  region     = "ap-south-1"
  
}

resource "aws_instance" "example-1" {
  ami           = "ami-08ee1453725d19cdb"
  instance_type = "t2.micro"
  key_name      = "Prabhash-17"
  count         = "1"
  tags = {
    Name = "task-1"
  }
  user_data       = file("sample.sh")
  security_groups = [aws_security_group.example-sg.name]
}
