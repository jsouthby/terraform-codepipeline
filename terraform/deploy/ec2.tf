resource "aws_instance" "my_test_ec2" {
  ami           = "ami-03ac5a9b225e99b02"
  instance_type = var.ec2_instance_type

  tags = {
    Name = "${var.environment}-terraform-instance"
  }
}

output "my_test_ec2" {
  value = aws_instance.my_test_ec2.id
}