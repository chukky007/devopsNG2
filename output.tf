output "ec2_machines" {
  value = aws_instance.my-fleet.*.arn
}