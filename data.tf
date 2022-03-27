data "aws_ami" "amazon" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.20211201.0-x86_64-gp2"]
  }

  owners = ["137112412989"]
}