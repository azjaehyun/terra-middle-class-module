resource "aws_instance" "instance-template" {
  #ami                    = data.aws_ami.ubuntu.id
  ami                    = "ami-00f89d63f7ee5510d"
  instance_type          = var.instance_type
  vpc_security_group_ids = var.sg_groups
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  tags = var.tag_name
  associate_public_ip_address = var.public_access
}
