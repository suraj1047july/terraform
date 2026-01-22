resource "aws_instance" "myinstance" {
  ami           = "ami-0ced6a024bb18ff2e"
  instance_type = "t3.micro"

  tags = {
    name = "mydemo"
  }
}
