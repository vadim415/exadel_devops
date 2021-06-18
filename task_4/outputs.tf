output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.instace_centos.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.instace_centos.public_ip

}
#instace_ubuntu

output "instance_public_ip1"{
  description = "Public IP address of the EC2 instance1"
  value       = aws_instance.instace_ubuntu[*].public_ip

}