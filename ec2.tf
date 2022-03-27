resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon.id
  instance_type = "t2.micro"
}